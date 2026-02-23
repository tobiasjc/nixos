{ config, pkgs, ... }:
{
  programs.git = {
    enable = true;

    prompt.enable = true;
    lfs.enable = true;
  };
}
