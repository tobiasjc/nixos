{ config, pkgs, ... }:
{
  imports = [
    ./docker
    ./libvirtd
    ./virtualbox
  ];
}
