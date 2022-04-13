# Antibody
# https://getantibody.github.io/
# Run static antibody bundle to load ZSH and plugins
source ~/.antibody-bundle.sh

# Dotfiles
# https://www.atlassian.com/git/tutorials/dotfiles
# Alias using git commands with local user config repo
# e.g. config add ~/.zshrc to commit this file.
alias config='git --git-dir=$HOME/.cfg --work-tree=$HOME'

# ASDF
# http://asdf-vm.com/
# Add ASDF environment setup.
source $(brew --prefix asdf)/libexec/asdf.sh

# Spaceship
# https://spaceship-prompt.sh/
# Fix unsightly colours in prompt ;)
LSCOLORS=ExFxBxDxCxegedabagacad
SPACESHIP_DIR_COLOR=blue
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_GIT_STATUS_COLOR=magenta

# Path
# Extend defaults with Homebrew and user binary paths
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/sbin:$PATH
export PATH=/bin:$PATH
export PATH=/private/tmp:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/bin:$PATH
export MANPATH=/usr/local/man:$MANPATH

# Use hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"

# Change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=30

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files under VCS as dirty
DISABLE_UNTRACKED_FILES_DIRTY="true"
