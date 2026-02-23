{ config, pkgs, ... }:
{
  hardware.sane = {
    enable = true;
    extraBackends = with pkgs; [ epsonscan2 ];
  };
}
