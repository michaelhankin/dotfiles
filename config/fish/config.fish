# Aliases
alias vi='nvim'
alias view='nvim -M'
alias rmd='rm -rf'

# Erase fish greeting
set -U fish_greeting ""

set -Ux EDITOR nvim
set -x LC_ALL en_US.UTF-8

if command -v pyenv 1>/dev/null 2>&1
  pyenv init - | source 
end

if test -e ~/.config/bb_config.fish
  source ~/.config/bb_config.fish
end

