{ config, pkgs, ... }: {
  imports = [
    ./dconf
    ./git
    ./steam
    ./vim
    ./virt-manager
  ];
}
