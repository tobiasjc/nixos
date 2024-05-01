{ config, pkgs, ... }: {
  imports = [
    ./packages
    ./programs
    ./services
  ];

  programs.home-manager.enable = true;
  home.packages = with pkgs; [
    home-manager
  ];

  /* The home.stateVersion option does not have a default and must be set */
  home.stateVersion = "23.11";
}
