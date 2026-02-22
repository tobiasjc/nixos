{ config, pkgs, ... }:
{
  services.ferretdb = {
    enable = true;
  };

  # FerretDB is a wrapper around MongoDB, and doesn't come with any
  # executable to Mongo CLI capabilities - therefore, those packages
  # need to be installed on its own
  environment.systemPackages = with pkgs; [
    mongodb-tools
    mongosh
    mongodb-compass
  ];
}
