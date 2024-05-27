{ config, pkgs, ... }: {
  programs.gradle = {
    enable = true;
    settings = { };
  };
}
