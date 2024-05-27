{ config, pkgs, ... }: {
  imports = [
    ./c
    ./go
    ./java
    ./nix
    ./node
    ./python
    ./zig
  ];
}
