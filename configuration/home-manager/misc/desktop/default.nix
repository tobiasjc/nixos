{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    emote
  ];

  services.flameshot = {
    enable = true;
    settings = {
      General = {
        startupLaunch = true;
      };
    };
  };
}
