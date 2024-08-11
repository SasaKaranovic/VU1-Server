{

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { nixpkgs, ... }: let

    eachDefaultSystemMap = let
      defaultSystems = ["x86_64-linux" "aarch64-linux"];
    in fn: builtins.foldl' ( acc: sys: acc // { ${sys} = fn sys; } )
                           {}
                           defaultSystems;

    overlays.vu-server = final: prev: let
      pythonEnv = final.python3.withPackages ( pythonPackages: [
        pythonPackages.tornado
        pythonPackages.numpy
        pythonPackages.pillow
        pythonPackages.requests
        pythonPackages.pyyaml
        pythonPackages.ruamel-yaml
        pythonPackages.pyserial
        pythonPackages.pyinstaller
      ] );
    in {
      vu-server = final.stdenv.mkDerivation {
        pname = "vu-server";
        version               = "0.1.0";
        src                   = ./.;
        propogatedBuildInputs = [pythonEnv];
        buildPhase            = ":";
        installPhase          = ''
          mkdir -p "$out/lib/vu-server" "$out/bin";
          mv ./* "$out/lib/vu-server/";
          echo '#! ${final.bash}/bin/bash' > "$out/bin/vu-server";
          echo "exec ${pythonEnv}/bin/python3 '$out/lib/vu-server/server.py'"  \
            >> "$out/bin/vu-server";
          chmod +x "$out/bin/vu-server";
        '';
      };
    };
    overlays.default = overlays.vu-server;

    nixosModules.vu-server = { lib, pkgs, options, config, ... }: let
      cfg = config.services.vu-server;
    in {
      options.services.vu-server = {
        enable = lib.mkEnableOption "Enable VU-Server service";

        package = lib.mkOption {
          type        = lib.types.package;
          default     = pkgs.vu-server;
          defaultText = "pkgs.vu-server";
          description = "Set the VU Server package to use.";
        };
      };

      config = lib.mkIf cfg.enable {
        nixpkgs.overlays           = [overlays.default];
        environment.systemPackages = [cfg.package];
        systemd.services.vu-server = {
          description      = "VU Dial Server daemon.";
          wantedBy         = ["multi-user.target"];
          restartIfChanged = true;
          serviceConfig    = {
            User       = "root";
            Group      = "root";
            ExecStart  = "${cfg.package}/bin/vu-server";
            Restart    = "on-failure";
            RestartSec = "5s";
          };
        };
      };

    };

    nixosModules.default = nixosModules.vu-server;

  in {

    inherit overlays nixosModules;

    packages = eachDefaultSystemMap ( system: let
      pkgsFor = nixpkgs.legacyPackages.${system}.extend overlays.default;
    in {
      inherit (pkgsFor) vu-server;
      default = pkgsFor.vu-server;
    } );



  };

}
