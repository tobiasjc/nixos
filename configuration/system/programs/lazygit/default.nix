{ config, pkgs, ... }:
{
  programs.lazygit = {
    enable = true;

    prompt.enable = true;
    lfs.enable = true;
  };
}
