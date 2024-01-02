{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    fastfetch
    tree
    kalker
    zip
    unzip
    rar
    p7zip
    keepassxc
    libsForQt5.yakuake
    openvpn
  ];
}
