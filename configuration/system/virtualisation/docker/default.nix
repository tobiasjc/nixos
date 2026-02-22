{ config, pkgs, ... }:
{
  virtualisation.docker = {
    enable = true;
    # only if you're using btrfs!
    # storageDriver = "btrfs";
  };
}
