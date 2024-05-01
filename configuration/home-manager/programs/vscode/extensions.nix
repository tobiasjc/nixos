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
    # gitlab
    vscode-extensions.gitlab.gitlab-workflow
    # docker
    vscode-extensions.ms-vscode-remote.remote-containers
    vscode-extensions.ms-azuretools.vscode-docker
    # git
    vscode-extensions.eamodio.gitlens
    # misc
    vscode-extensions.mkhl.direnv
    vscode-extensions.hashicorp.terraform
    vscode-extensions.gruntfuggly.todo-tree
    vscode-extensions.yzhang.markdown-all-in-one
    # ziglang
    vscode-extensions.ziglang.vscode-zig
    # scala
    vscode-extensions.scalameta.metals
    vscode-extensions.scala-lang.scala
  ];
}
