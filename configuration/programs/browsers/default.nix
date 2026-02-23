{ config, pkgs, ... }:
{
  imports = [
    ./chromium
    ./firefox
    ./google-chrome
  ];
}
