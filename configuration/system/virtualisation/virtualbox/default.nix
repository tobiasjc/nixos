{ config, pkgs, ... }:
{
  virtualisation.virtualbox = {
    host = {
      enableKvm = false;
      enableExtensionPack = true;
      enable = true;
    };

    guest = {
      enable = true;
      dragAndDrop = true;
    };
  };
}
