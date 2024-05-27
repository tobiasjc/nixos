{ config, pkgs, ... }: {
  programs.k9s.enable = true;

  home.packages = with pkgs; [
    minikube
    kubernetes-helm
  ];
}
