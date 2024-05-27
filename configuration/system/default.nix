{ config, pkgs, ... }: {
  imports = [
    ./desktop-environment
    ./fonts
    ./hardware
    ./packages
    ./programs
    ./services
    ./virtualisation
  ];
}
