{ config, pkgs, ... }: {
  imports = [
    ./ant
    ./cmake
    ./gradle
    ./make
    ./maven
  ];
}
