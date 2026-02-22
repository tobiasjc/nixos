{ config, pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;

    withRuby = true;
    withPython3 = true;
    withNodeJs = true;

    vimAlias = true;
    viAlias = true;
  };
}
