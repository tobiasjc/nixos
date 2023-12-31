{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    # cudaPackages.cudatoolkit
    # cudaPackages.cutensor
    # cudaPackages.tensorrt
  ];
}
