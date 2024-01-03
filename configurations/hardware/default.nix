{ config, pkgs, ... }: {
  imports = [
    ./cpu
    ./nvidia
  ];
}
