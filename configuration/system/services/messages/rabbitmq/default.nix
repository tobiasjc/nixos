{ config, pkgs, ... }:
{
  services.rabbitmq = {
    enable = true;

    managementPlugin = {
      enable = true;
    };
  };

  # You know... we like command line things, even though the management
  # plugin is good, it's also good to be able to manage it without a
  # graphical interface
  environment.systemPackages = with pkgs; [ rabtap ];
}
