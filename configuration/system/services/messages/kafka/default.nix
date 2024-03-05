{ config, pkgs, ... }: {

  imports = [
    ./zookeeper.nix
    ./kafka.nix
  ];

  systemd.services."apache-kafka" = {
    requires = [ "zookeeper.service" ];
    after = [ "zookeeper.service" ];
  };

  # Just because the Kafka service doesn't provide the scripts, I'm going
  # to install something to make it useful - not my choice, may be gone in
  # the near future
  environment.systemPackages = with pkgs; [ kafkactl ];
}
