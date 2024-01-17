{ config, pkgs, ... }: {
  programs.eclipse = {
    enable = true;
    package = pkgs.eclipses.eclipse-jee;
    enableLombok = true;
  };
}
