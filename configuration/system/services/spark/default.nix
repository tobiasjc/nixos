{ config, pkgs, ... }: {
  services.spark = {
    master = {
      enable = true;
      bind = "127.0.0.1";
      extraEnvironment = {
        SPARK_MASTER_WEBUI_PORT = "8181";
      };
    };
    worker = {
      enable = true;
      master = "127.0.0.1:7077";
      extraEnvironment = {
        SPARK_WORKER_CORES = "2";
        SPARK_WORKER_MEMORY = "2g";
      };
    };
  };
}
