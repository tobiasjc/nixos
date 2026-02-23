{ config, pkgs, ... }:
{
  programs.tmux = {
    enable = true;
  };

  plugins = with pkgs.tmuxPlugins; [
    cpu
    yank
    open
    dotbar
  ];
}
