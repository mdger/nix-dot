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
    # software development
    docker
    # applications
    kitty
    google-chrome
  ];

  virtualisation.docker.enable = true;
  # Enable nix ld
  programs.nix-ld.enable = true;

  users.users.mg = {
    extraGroups = [ "docker" ];
  };
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
