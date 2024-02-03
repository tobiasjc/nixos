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

  # Allow unfree
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnfreePredicate = _: true; # for standalone software


  /* The home.stateVersion option does not have a default and must be set */
  home.stateVersion = "23.11";
}
