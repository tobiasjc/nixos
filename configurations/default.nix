{ config, pkgs, ... }: {
  imports = [
    ./fonts
    ./hardware
    ./programs
    ./services
    ./virtualisation
  ];
}
