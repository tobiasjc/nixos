{ config, pkgs, ... }:
{
  imports = [
    ./dconf
    ./printers
    ./vim
    ./virt-manager
    ./vscode
    ./git
    ./lazygit
    ./starship
  ];
}
