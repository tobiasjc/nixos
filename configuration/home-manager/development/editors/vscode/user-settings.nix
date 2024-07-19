{ config, pkgs, ... }: {
  programs.vscode.userSettings = {
    # theme
    "workbench.colorTheme" = "Catppuccin Mocha";
    "workbench.iconTheme" = "catppuccin-mocha";

    # global editor
    "editor.fontFamily" = "'CommitMono Nerd Font Mono Regular', 'monospace', monospace";
    "editor.fontSize" = 10;
    "editor.rulers" = [ 80 120 160 ];
    "editor.insertSpaces" = true;

    # specific editor
    "[nix]"."editor.tabSize" = 2;

    # terminal
    "terminal.integrated.fontSize" = 10;
    "terminal.integrated.fontFamily" = "'IntoneMono Nerd Font Mono Regular', 'monospace', monospace";

    # markdown
    "markdown-preview-enhanced.previewTheme" = "github-dark.css";
  };
}
