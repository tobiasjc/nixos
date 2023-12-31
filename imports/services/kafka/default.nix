{ config, pkgs, ... }: {
  # Zookeeper
  services.zookeeper = {
    enable = true;
  };

  # Kafka
  services.apache-kafka = {
    enable = true;

    settings = {
      "log.dirs" = [ "/var/log/apache-kafka/" ];
      "zookeeper.connect" = "localhost:" + builtins.toString config.services.zookeeper.port;
    };
  };

  # Just because the Kafka service doesn't provide the scripts, I'm going
  # to install something to make it useful - not my choice, may be gone in
  # the near future
  environment.systemPackages = with pkgs; [
    kafkactl
  ];
}
