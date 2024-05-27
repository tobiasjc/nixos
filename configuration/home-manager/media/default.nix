{ config, pkgs, ... }: {
  imports = [
    ./codecs
    ./drawing
    ./music
    ./player
    ./stream
  ];
}
