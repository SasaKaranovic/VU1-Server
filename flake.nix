{

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { nixpkgs, ... }: let

    eachDefaultSystemMap = let
      defaultSystems = ["x86_64-linux" "aarch64-linux"];
    in fn: builtins.foldl' ( acc: sys: acc // { ${sys} = fn sys; } )
                           {}
                           defaultSystems;

    overlays.pythonGenerated = import ./python-packages.nix;
    overlays.vu-server = final: prev: {};

  in {

    devShells = eachDefaultSystemMap ( system: let
      pkgsFor   = nixpkgs.legacyPackages.${system};
      pythonEnv = pkgsFor.python3.withPackages ( pythonPackages: [
        pythonPackages.tornado
        pythonPackages.numpy
        pythonPackages.pillow
        pythonPackages.requests
        #pythonPackages.argparse
        pythonPackages.pyyaml
        pythonPackages.ruamel-yaml
        pythonPackages.pyserial
        pythonPackages.pyinstaller
      ] );
    in {
      default = pkgsFor.mkShell {
        packages = [
          pkgsFor.argparse
          pythonEnv
        ];
      };
    } );


  };

}
