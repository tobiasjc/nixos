{ config, pkgs, ... }: {
  imports = [
    ./packages
    ./programs
  ];

  # Allow unfree
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = _: true; # for standalone software

  programs.home-manager.enable = true;

  /* The home.stateVersion option does not have a default and must be set */
  home.stateVersion = "23.11";
}
