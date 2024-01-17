{ config, pkgs, ... }: {
  imports = [
    ./build
    ./environment
    ./kubernetes
    ./misc
    ./node
    ./python
    ./zig
  ];

  home.packages = with pkgs; [
    jetbrains-toolbox
    jd-gui
  ];
}
