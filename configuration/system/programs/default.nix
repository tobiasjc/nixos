{ config, pkgs, ... }: {
  imports = [
    ./dconf
    ./printers
    ./vim
    ./virt-manager
  ];
}
