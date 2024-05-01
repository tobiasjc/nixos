{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    texstudio
    libreoffice
    libsForQt5.skanpage
    obsidian
  ];
}
