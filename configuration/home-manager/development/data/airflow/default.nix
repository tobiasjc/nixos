{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    # apache-airflow
    # airlift
  ];
}
