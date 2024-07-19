{ config, pkgs, ... }: {
  imports = [
    ./eclipse
    ./emacs
    ./neovim
    ./vscode
  ];
}
