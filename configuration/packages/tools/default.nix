{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    unzip
    xorg.xkill
    openfortivpn
    asdf-vm
    stow
  ];
}
