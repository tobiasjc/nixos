{ config, pkgs, ... }:
{
  imports = [
    ./cpu
    ./nvidia
    ./scanners
  ];
}
