{ config, pkgs, ... }:
{
  virtualisation.virtualbox = {
    guest = {
      enable = true;
      dragAndDrop = true;
      clipboard = true;
      use3rdPartyModules = true;
    };
  };
}
