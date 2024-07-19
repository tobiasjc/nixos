{ config, pkgs, ... }: {
  imports = [
    ./bash
    ./direnv
    ./fastfetch
    ./jetbrains
    ./jq
    ./meld
    ./starship
    ./tmux
  ];
}
