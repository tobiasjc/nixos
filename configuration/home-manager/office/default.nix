{ config, pkgs, ... }: {
  imports = [
    ./packages
    ./sioyek
    ./texlive
    ./thunderbird
  ];
}
