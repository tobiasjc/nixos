{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    musescore
  ];
}
