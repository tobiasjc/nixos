{ config, pkgs, ... }: {
  services.flameshot = {
    enable = true;
    settings = {
      General = {
        startupLaunch = true;
      };
    };
  };
}
