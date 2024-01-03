{ config, pkgs, ... }: {
  imports = [
    ./aria2
    ./bash
    ./dconf
    ./eclipse
    ./direnv
    ./git
    ./golang
    ./java
    ./jq
    ./k9s
    ./lazygit
    ./neovim
    ./obs-studio
    ./starship
    ./thunderbird
    ./vscode
    ./tmux
  ];
}
