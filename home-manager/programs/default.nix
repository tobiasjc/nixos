{ config, pkgs, ... }: {
  imports = [
    ./bash
    ./dconf
    ./direnv
    ./git
    ./k9s
    ./lazygit
    ./starship
    ./thunderbird
    ./vscode
    ./tmux
  ];
}
