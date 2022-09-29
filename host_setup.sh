# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install homebrew
# TODO: check if macos first
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install nvim
brew install tmux
brew install pyenv
brew install --cask alacritty

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

ln -sf ~/.dotfiles/gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/gitignore_global ~/.gitignore_global
ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/zshrc ~/.zshrc
ln -sf ~/.dotfiles/alacritty.yml ~/.alacritty.yml

ln -sf ~/.dotfiles/config/karabiner ~/.config/karabiner
ln -sf ~/.dotfiles/config/nvim ~/.config/nvim
