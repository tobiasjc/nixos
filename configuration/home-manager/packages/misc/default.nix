{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    emote
    xarchiver
    fastfetch
    tree
    xclip
    jqp
    kalker
    gzip
    zip
    unzip
    rar
    p7zip
    keepassxc
    openvpn
    discord
    path-of-building
    xq-xml
    spotify
    youtube-dl
  ];
}
