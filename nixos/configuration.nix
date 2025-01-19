{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # neovim
    neovim
    fd
    ripgrep
    fzf
    lazygit
    obsidian
    git
    tmux
    gcc
    wget
    unzip
    python314
    cargo
    nixfmt-rfc-style
    # applications
    kitty
    google-chrome
  ];

  # Enable nix ld
  programs.nix-ld.enable = true;

  # Sets up all the libraries to load
  programs.nix-ld.libraries = with pkgs; [
    # stdenv.cc.cc
    # zlib
    # fuse3
    # icu
    # nss
    # openssl
    # curl
    # expat
  ];
}
