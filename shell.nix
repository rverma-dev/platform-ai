{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_20
    yarn-berry
    python3
    go
    gitAndTools.gh
    just        # Command runner for development tasks
  ];

  shellHook = ''
    echo "Development environment loaded!"
    echo "Node.js version: $(node --version)"
    echo "Yarn version: $(yarn --version)"
    echo "Python version: $(python3 --version)"
    echo "Go version: $(go version)"
    echo "Just version: $(just --version)"
  '';
}
