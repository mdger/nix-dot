#!/usr/bin/env nix-shell
#! nix-shell -i bash
#! nix-shell -p git tmux
#! nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/refs/tags/24.05.tar.gz

# tmux
if [ ! -d ~/.tmux/plugins/tpm ]; then
    echo "missing ~/.tmux/plugins/tpm"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    echo "success: git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"
fi

unlink ~/.tmux.conf &&
    ln -rs tmux/.tmux.conf ~/.tmux.conf &&
    tmux source ~/.tmux.conf &&
    echo "created symlink .tmux.conf"

# bash
if [ -f ~/.bash_profile ]; then
    unlink ~/.bash_profile
fi

if [ -d ~/applications]; then
    unlink ~/applications
fi

ln -rs applications ~/applications &&
    echo "created directory ~/applications"

ln -rs bash/.bash_profile ~/.bash_profile &&
    source ~/.bash_profile &&
    echo "created symlink .bash_profile"

# neovim
if [ -d ~/.config/nvim ]; then
    mv ~/.config/nvim{,.bak}
    echo "created backup ~/.config/nvim.bak"
fi

ln -rs ./nvim ~/.config/nvim &&
    echo "created symlink ~/.config/nvim"

# kitty
if [ -f ~/.config/kitty/kitty.conf ]; then
    mv ~/.config/kitty/kitty.conf{,.bak}
    echo "created backup ~/.config/kitty/kitty.conf.bak"
fi

ln -rs ./kitty/kitty.conf ~/.config/kitty/kitty.conf &&
    echo "created symlink ~/.config/kitty/kitty.conf"

echo "finished setup..."
