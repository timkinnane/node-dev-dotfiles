# Antibody
# https://getantibody.github.io/
# Run static antibody bundle to load ZSH and plugins
source ~/.antibody-bundle.sh

# Dotfiles
# https://www.atlassian.com/git/tutorials/dotfiles
# Alias using git commands with local user config repo
# e.g. config add ~/.zshrc to commit this file.
alias config='git --git-dir=$HOME/.cfg --work-tree=$HOME'

# FNM (Fast Node Manager)
# https://github.com/Schniz/fnm
# Add FNM environment configs and cd hooks
eval "$(fnm env --use-on-cd)"
