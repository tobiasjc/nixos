{ config, pkgs, ... }: {
  programs.thunderbird = {
    enable = true;
    profiles = { };
  };
}
