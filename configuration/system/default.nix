{ config, pkgs, ... }: {
  imports = [
    ./desktop-environment
    ./fonts
    ./hardware
    ./programs
    ./services
    ./virtualisation
  ];
}
