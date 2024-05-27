{ config, pkgs, ... }: {
  imports = [
    ./build
    ./data
    ./databases
    ./editors
    ./environment
    ./git
    ./kubernetes
    ./languages
    ./runtime
    ./tests
  ];
}
