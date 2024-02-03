{ config, pkgs, ... }: {
  services.xserver = {
    displayManager.lightdm = {
      enable = true;
    };

    desktopManager.xfce = {
      enable = true;
    };
  };
}
