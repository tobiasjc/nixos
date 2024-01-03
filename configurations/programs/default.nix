{ config, pkgs, ... }: {
  imports = [
    ./dconf
    ./git
    ./vim
    ./virt-manager
  ];
}
