{ config, pkgs, ... }: {
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: with pkgs.emacsPackages; [
      use-package
      doom
    ];
  };
}
