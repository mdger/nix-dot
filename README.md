# nix-dot repository

## Introduction

This repository contains everything related to NixOS and to configurations of applications which I use as a daily driver.

  


## Prerequisites
- install nerd font Hack Nerd Font Mono 
- add import instruction for nixos directory in root file /etc/nixos/configuration.nix 
- make a backup of current Neovim files
```sh
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

## Execute setup.sh
1. sets up soft links / plugins for
    - neovim
    - tmux 
    - .bash_profile
2. modifications on the config can be done in this project folder


## Todos
- Hyprland
- install applications via Nix Flakes
