{ config, pkgs, ... }: {
  programs.vscode.extensions = with pkgs; [
    # xml
    vscode-extensions.redhat.vscode-xml
    # nix
    vscode-extensions.jnoortheen.nix-ide
    # yaml
    vscode-extensions.redhat.vscode-yaml
    # c/c++
    vscode-extensions.ms-vscode.cpptools
    vscode-extensions.ms-vscode.cmake-tools
    # shell
    vscode-extensions.foxundermoon.shell-format
    vscode-extensions.timonwong.shellcheck
    # golang
    vscode-extensions.golang.go
    # js/ts
    vscode-extensions.esbenp.prettier-vscode
    # java
    vscode-extensions.redhat.java
    vscode-extensions.vscjava.vscode-maven
    vscode-extensions.vscjava.vscode-gradle
    vscode-extensions.vscjava.vscode-java-dependency
    vscode-extensions.vscjava.vscode-java-test
    vscode-extensions.vscjava.vscode-java-debug
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
  ];
}
