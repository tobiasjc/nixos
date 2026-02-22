{ config, pkgs, ... }:
{
  services.apache-kafka = {
    enable = true;
    # settings = {
    #   "broker.id" = 0;
    #   "listeners" = [
    #     "PLAINTEXT://localhost:9092"
    #   ];
    #   "zookeeper.connect" = "localhost:" + builtins.toString config.services.zookeeper.port;
    #   "log.dirs" = [ "/var/log/apache-kafka/" ];
    # };

    settings = {
      "node.id" = 0;
      "process.roles" = [
        "broker"
        "controller"
      ];

      "listeners" = [
        "PLAINTEXT://localhost:9092"
        "CONTROLLER://localhost:9093"
      ];

      "listener.security.protocol.map" = [
        "PLAINTEXT:PLAINTEXT"
        "CONTROLLER:PLAINTEXT"
      ];

      "controller.listener.names" = [ "CONTROLLER" ];

      "controller.quorum.voters" = [ "0@127.0.0.1:9093" ];

      "log.dirs" = [ "/var/log/apache-kafka/" ];
    };
  };

  # systemd.services."apache-kafka" = {
  #   after = [ "zookeeper.service" ];
  #   requires = [ "zookeeper.service" ];
  # };

  environment.systemPackages = with pkgs; [ kafkactl ];
}
