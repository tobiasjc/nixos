{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    vlc
    gimp
    drawio
  ];
}
