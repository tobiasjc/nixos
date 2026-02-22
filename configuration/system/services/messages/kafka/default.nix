{ config, pkgs, ... }:
{
  services.apache-kafka = {
    enable = true;
    settings = {
      "node.id" = "main";
      "listeners" = [ "PLAINTEXT://:9092" ];
      "process.roles" = "broker,controller";
      "log.dirs" = [ "/var/log/apache-kafka/" ];
    };
  };

  environment.systemPackages = with pkgs; [ kafkactl ];
}
