{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    fastfetch
    tree
    kalker
    zip
    unzip
    p7zip
    keepassxc
    drawio
    libsForQt5.yakuake
    libsForQt5.zanshin
  ];
}
