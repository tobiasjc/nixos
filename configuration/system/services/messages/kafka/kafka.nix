{ config, pkgs, ... }:
{
  services.apache-kafka = {
    enable = true;
    settings = {
      "log.dirs" = [ "/var/log/apache-kafka/" ];
      "zookeeper.connect" = "localhost:" + builtins.toString config.services.zookeeper.port;
    };
  };
}
