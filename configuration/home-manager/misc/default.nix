{ config, pkgs, ... }: {
  imports = [
    ./cmd
    ./desktop
    ./fun
  ];
}
