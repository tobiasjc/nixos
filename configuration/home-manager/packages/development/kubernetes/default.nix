{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    minikube
    kubernetes-helm
  ];
}
