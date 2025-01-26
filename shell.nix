{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  packages = with pkgs; [
    nodejs_20
    nodePackages.npm
    yarn-berry
    nodePackages.typescript
    nodePackages.typescript-language-server

    python311
    python311Packages.pip
    python311Packages.python-lsp-server
  ];
  shellHook = ''
    echo "Node.js development environment loaded"
    echo "Node: $(node --version)"
    echo "NPM: $(npm --version)"
    echo "Yarn: $(yarn --version)"

    echo "Python development environment loaded"
    echo "Python: $(python --version)"
  '';
}
