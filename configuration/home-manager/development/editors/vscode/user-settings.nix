{ config, pkgs, ... }: {
  programs.vscode.userSettings = {
    # theme
    "workbench.colorTheme" = "Ayu Dark Bordered";

    # global editor
    "editor.fontFamily" = "'CommitMono Nerd Font Mono Regular', 'monospace', monospace";
    "editor.fontSize" = 10;
    "editor.rulers" = [ 80 120 160 ];
    "editor.insertSpaces" = true;

    # specific editor
    "[nix]"."editor.tabSize" = 2;

    # terminal
    "terminal.integrated.fontSize" = 10;

    # languages
    "zig.path" = "";
    "zig.zls.path" = "";
    "zig.initialSetupDone" = true;
  };
}
