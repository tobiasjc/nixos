{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    fastfetch
    tree
    xclip
    jqp
    kalker
    zip
    unzip
    rar
    p7zip
    keepassxc
    libsForQt5.yakuake
    libsForQt5.filelight
    openvpn
    discord
  ];
}
