{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    xorg.xkill
  ];
}
