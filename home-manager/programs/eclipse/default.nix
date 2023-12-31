{ config, pkgs, ... }: {
  programs.eclipse = {
    enable = true;
    enableLombok = true;
  };
}
