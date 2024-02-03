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
    ./sioyek
    ./starship
    ./texlive
    ./thunderbird
    ./vscode
    ./tmux
  ];
}
