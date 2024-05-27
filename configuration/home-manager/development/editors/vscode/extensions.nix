{ config, pkgs, ... }: {
  programs.vscode.extensions = with pkgs; [
    # xml
    vscode-extensions.redhat.vscode-xml
    # nix
    vscode-extensions.jnoortheen.nix-ide
    # yaml
    vscode-extensions.redhat.vscode-yaml
    # shell
    vscode-extensions.foxundermoon.shell-format
    vscode-extensions.timonwong.shellcheck
    # js/ts
    vscode-extensions.dbaeumer.vscode-eslint
    vscode-extensions.esbenp.prettier-vscode
    # python
    vscode-extensions.ms-python.python
    vscode-extensions.ms-toolsai.jupyter
    # gitlab
    vscode-extensions.gitlab.gitlab-workflow
    # docker
    vscode-extensions.ms-vscode-remote.remote-containers
    vscode-extensions.ms-azuretools.vscode-docker
    # git
    vscode-extensions.eamodio.gitlens
    # misc
    vscode-extensions.hashicorp.terraform
    vscode-extensions.gruntfuggly.todo-tree
    vscode-extensions.yzhang.markdown-all-in-one
    # ziglang
    vscode-extensions.ziglang.vscode-zig
  ];
}
