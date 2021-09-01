# Aliases
alias vi='nvim'
alias view='nvim -M'
alias rmd='rm -rf'
alias pip='python3 -m pip'
alias src_fish_conf='source ~/.config/fish/config.fish'

# Erase fish greeting
set -U fish_greeting ""

set -Ux EDITOR nvim
set -x MYVIMRC ~/.config/nvim/init.vim

if command -v pyenv 1>/dev/null 2>&1
  status is-login; and pyenv init --path | source
  pyenv init - | source
end

if test -e ~/.config/bb_config.fish
  source ~/.config/bb_config.fish
end

