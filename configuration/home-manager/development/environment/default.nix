{ config, pkgs, ... }: {
  imports = [
    ./bash
    ./direnv
    ./jetbrains
    ./jq
    ./starship
    ./tmux
  ];
}
