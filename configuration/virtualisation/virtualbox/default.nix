{ config, pkgs, ... }:
{
  virtualisation.virtualbox = {
    guest = {
      enable = false;
      dragAndDrop = true;
      clipboard = true;
      use3rdPartyModules = true;
    };
  };
}
