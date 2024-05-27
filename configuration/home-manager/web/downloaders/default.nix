{ config, pkgs, ... }: {
  programs.aria2.enable = true;

  home.packages = with pkgs; [
    youtube-dl
    curl
    wget
  ];
}
