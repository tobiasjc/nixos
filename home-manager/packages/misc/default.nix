{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    fastfetch
    tree
    kalker
    aria
    zip
    p7zip
    keepassxc
    drawio
  ];
}
