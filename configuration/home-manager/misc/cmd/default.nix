{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    tree
    xclip
    kalker
  ];
}
