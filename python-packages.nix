# Generated by pip2nix 0.8.0.dev1
# See https://github.com/nix-community/pip2nix

{ pkgs, fetchurl, fetchgit, fetchhg }:

final: prev: {
  "altgraph" = prev.buildPythonPackage rec {
    pname = "altgraph";
    version = "0.17.4";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/4d/3f/3bc3f1d83f6e4a7fcb834d3720544ca597590425be5ba9db032b2bf322a2/altgraph-0.17.4-py2.py3-none-any.whl";
      sha256 = "1zwda0my2p53nai5zfm3py6mkikv0wdn04b7brjpxq8dfns469v4";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "argparse" = prev.buildPythonPackage rec {
    pname = "argparse";
    version = "1.4.0";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/f2/94/3af39d34be01a24a6e65433d19e107099374224905f1e0cc6bbe1fd22a2f/argparse-1.4.0-py2.py3-none-any.whl";
      sha256 = "0533cr5w14da8wdb2q4py6aizvbvsdbk3sj7m1jx9lwznvnlf5n3";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "certifi" = prev.buildPythonPackage rec {
    pname = "certifi";
    version = "2024.7.4";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/1c/d5/c84e1a17bf61d4df64ca866a1c9a913874b4e9bdc131ec689a0ad013fb36/certifi-2024.7.4-py3-none-any.whl";
      sha256 = "140y22hj8bv2bf6im42r424x1spk9r5vnrsfxs2sphl928dy5661";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "charset-normalizer" = prev.buildPythonPackage rec {
    pname = "charset-normalizer";
    version = "3.3.2";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz";
      sha256 = "1m9g0f513ng4dp2vd3smi4g2nmhqkjqh3bzcza14li947frkq37k";
    };
    format = "setuptools";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "idna" = prev.buildPythonPackage rec {
    pname = "idna";
    version = "3.7";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/e5/3e/741d8c82801c347547f8a2a06aa57dbb1992be9e948df2ea0eda2c8b79e8/idna-3.7-py3-none-any.whl";
      sha256 = "180sfq3qsycfxn1zc9w4gp4lr44adpx8p2d1sf939m5dg3yf3zl2";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "importlib-metadata" = prev.buildPythonPackage rec {
    pname = "importlib-metadata";
    version = "8.2.0";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/82/47/bb25ec04985d0693da478797c3d8c1092b140f3a53ccb984fbbd38affa5b/importlib_metadata-8.2.0-py3-none-any.whl";
      sha256 = "0s9k45s2xjv8vn2aq64x537ymfpycjxk56b7i2r1jygrqah1z40i";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [
      final."zipp"
    ];
  };
  "numpy" = prev.buildPythonPackage rec {
    pname = "numpy";
    version = "2.0.1";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/1c/8a/0db635b225d2aa2984e405dc14bd2b0c324a0c312ea1bc9d283f2b83b038/numpy-2.0.1.tar.gz";
      sha256 = "1cz7hypb5389rmfv1swhkr87w2dbzbhwz6d634shqhcnawiqfns8";
    };
    format = "setuptools";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "packaging" = prev.buildPythonPackage rec {
    pname = "packaging";
    version = "24.1";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/08/aa/cc0199a5f0ad350994d660967a8efb233fe0416e4639146c089643407ce6/packaging-24.1-py3-none-any.whl";
      sha256 = "097igwfmvak1xb1x1ijk1wnjzmg68j2n4764hkrzglnvvcbj53sv";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "pillow" = prev.buildPythonPackage rec {
    pname = "pillow";
    version = "10.4.0";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/cd/74/ad3d526f3bf7b6d3f408b73fde271ec69dfac8b81341a318ce825f2b3812/pillow-10.4.0.tar.gz";
      sha256 = "01jarpbxzxazhmvj54ahfhyk3cmp2j8lm7zpc46v62a3sba1qv0n";
    };
    format = "setuptools";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "pyinstaller" = prev.buildPythonPackage rec {
    pname = "pyinstaller";
    version = "6.10.0";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/5c/df/30b1f66d35defa37e676556acca4eb775b49637bb73054b0c31af134cd8a/pyinstaller-6.10.0.tar.gz";
      sha256 = "0w0js91xan6m4l56vdqbd31ac46cjb6zc5lgpw8bkxvg0pw40f0l";
    };
    format = "setuptools";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [
      final."altgraph"
      final."importlib-metadata"
      final."packaging"
      final."pyinstaller-hooks-contrib"
      final."setuptools"
    ];
  };
  "pyinstaller-hooks-contrib" = prev.buildPythonPackage rec {
    pname = "pyinstaller-hooks-contrib";
    version = "2024.8";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/a0/8f/a7eb7b85ea2015d1c9a8c1686eaeb61f3ce35e1047fc03c0ac71d22d68f2/pyinstaller_hooks_contrib-2024.8-py3-none-any.whl";
      sha256 = "0nl2azalxhd1zqgg0g8wm5f33a6ll69qgrbk1rc3z39rbjdgwmq0";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [
      final."importlib-metadata"
      final."packaging"
      final."setuptools"
    ];
  };
  "pyserial" = prev.buildPythonPackage rec {
    pname = "pyserial";
    version = "3.5";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/07/bc/587a445451b253b285629263eb51c2d8e9bcea4fc97826266d186f96f558/pyserial-3.5-py2.py3-none-any.whl";
      sha256 = "1w1c5z0gxvjcl73n828pvrfwb9b7mrxyrcwz575ac71rpav1sif4";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "pyyaml" = prev.buildPythonPackage rec {
    pname = "pyyaml";
    version = "6.0.2";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz";
      sha256 = "0gmwggzm0j0iprx074g5hah91y2f68sfhhldq0f8crddj7ndk16m";
    };
    format = "setuptools";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "requests" = prev.buildPythonPackage rec {
    pname = "requests";
    version = "2.32.3";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/f9/9b/335f9764261e915ed497fcdeb11df5dfd6f7bf257d4a6a2a686d80da4d54/requests-2.32.3-py3-none-any.whl";
      sha256 = "1inwsrhx0m16q0wa1z6dfm8i8xkrfns73xm25arcwwy70gz1qxkh";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [
      final."certifi"
      final."charset-normalizer"
      final."idna"
      final."urllib3"
    ];
  };
  "ruamel.yaml" = prev.buildPythonPackage rec {
    pname = "ruamel.yaml";
    version = "0.18.6";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/73/67/8ece580cc363331d9a53055130f86b096bf16e38156e33b1d3014fffda6b/ruamel.yaml-0.18.6-py3-none-any.whl";
      sha256 = "0dn6s216idwi2r4s46z84wc0i9pq02ycrh07v3rw85pg7nikpdap";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [
      final."ruamel.yaml.clib"
    ];
  };
  "ruamel.yaml.clib" = prev.buildPythonPackage rec {
    pname = "ruamel.yaml.clib";
    version = "0.2.8";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/46/ab/bab9eb1566cd16f060b54055dd39cf6a34bfa0240c53a7218c43e974295b/ruamel.yaml.clib-0.2.8.tar.gz";
      sha256 = "04mm1gk5y984gznkccb7wq735scgba0ahlwpmd69mph3810f1cmy";
    };
    format = "setuptools";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "tornado" = prev.buildPythonPackage rec {
    pname = "tornado";
    version = "6.4.1";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/ee/66/398ac7167f1c7835406888a386f6d0d26ee5dbf197d8a571300be57662d3/tornado-6.4.1.tar.gz";
      sha256 = "1s84qmpzzm00512lvs31y9g5v88q3pwyclaa43w5131x319splwj";
    };
    format = "setuptools";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "urllib3" = prev.buildPythonPackage rec {
    pname = "urllib3";
    version = "2.2.2";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/ca/1c/89ffc63a9605b583d5df2be791a27bc1a42b7c32bab68d3c8f2f73a98cd4/urllib3-2.2.2-py3-none-any.whl";
      sha256 = "0wil7vvi3lw00ihlc2kzw5v9f6fjyblsrq9ph135aqb89pvb4j54";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
  "zipp" = prev.buildPythonPackage rec {
    pname = "zipp";
    version = "3.19.2";
    src = fetchurl {
      url = "https://files.pythonhosted.org/packages/20/38/f5c473fe9b90c8debdd29ea68d5add0289f1936d6f923b6b9cc0b931194c/zipp-3.19.2-py3-none-any.whl";
      sha256 = "0p01z3pb6wlhicmbgi6v3xzb9j56lxqkgi9j5g8g4mbhcrgpb4gh";
    };
    format = "wheel";
    doCheck = false;
    buildInputs = [];
    checkInputs = [];
    nativeBuildInputs = [];
    propagatedBuildInputs = [];
  };
}