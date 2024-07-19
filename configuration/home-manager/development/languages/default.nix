{ config, pkgs, ... }: {
  imports = [
    ./c
    ./crystal
    ./go
    ./java
    ./lua
    ./nim
    ./nix
    ./node
    ./python
    ./zig
  ];
}
