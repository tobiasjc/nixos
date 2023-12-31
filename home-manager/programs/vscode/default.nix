{ config, pkgs, ... }: {
  programs.vscode = {
    enable = true;
    extensions = with pkgs; [
      # xml
      vscode-extensions.redhat.vscode-xml

      # golang
      vscode-extensions.golang.go

      # java
      vscode-extensions.redhat.java
      vscode-extensions.vscjava.vscode-maven
      vscode-extensions.vscjava.vscode-gradle
      vscode-extensions.vscjava.vscode-java-dependency
      vscode-extensions.vscjava.vscode-java-test
      vscode-extensions.vscjava.vscode-java-debug
    ];
  };
}
