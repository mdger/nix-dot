{ config, lib, pkgs, modulesPath, ... }:

{
  environment.systemPackages = with pkgs; [
  	neovim
    # neovim 
    kitty
    fd
    ripgrep
    fzf
    lazygit
    obsidian
    git
    google-chrome
    tmux
    zig
  ];
}
