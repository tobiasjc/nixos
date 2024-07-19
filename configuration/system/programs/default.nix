{ config, pkgs, ... }: {
  imports = [
    ./dconf
    ./printers
    # ./steam
    ./vim
    ./virt-manager
  ];
}
