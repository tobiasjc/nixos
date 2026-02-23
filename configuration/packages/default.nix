{ config, pkgs, ... }:
{
  imports = [
    ./libs
    ./tools
    ./development
  ];
}
