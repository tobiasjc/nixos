{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    jmeter
  ];
}
