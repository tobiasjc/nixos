{ config, pkgs, ... }: {
  imports = [
    ./eclipse
    ./neovim
    ./vscode
  ];
}
