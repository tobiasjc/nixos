{ config, pkgs, ... }:
{
  imports = [
    ./kafka
    ./rabbitmq
  ];
}
