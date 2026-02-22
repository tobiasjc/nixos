{ config, pkgs, ... }:
{
  services.apache-kafka = {
    enable = true;
    settings = {
      "log.dirs" = [ "/var/log/apache-kafka/" ];
      "process.roles" = "broker,controller";
    };
  };

  environment.systemPackages = with pkgs; [ kafkactl ];
}
