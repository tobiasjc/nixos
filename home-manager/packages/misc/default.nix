{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    fastfetch
    tree
    kalker
    zip
    p7zip
    keepassxc
    drawio
    libsForQt5.yakuake
    libsForQt5.zanshin
  ];
}
