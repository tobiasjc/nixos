{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    xarchiver
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
    openvpn
    discord
    path-of-building
    xq-xml
  ];
}
