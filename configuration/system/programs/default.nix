{ config, pkgs, ... }: {
  imports = [
    ./dconf
    ./git
    ./printers
    ./vim
    ./virt-manager
  ];
}
