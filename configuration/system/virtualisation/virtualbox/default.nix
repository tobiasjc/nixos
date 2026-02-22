{ config, pkgs, ... }:
{
  virtualisation.virtualbox = {
    enableKvm = false;
    guest = {
      enable = true;
    };
  };
}
