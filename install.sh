#!/bin/bash

DOTFILES=$HOME/.dotfiles

#
# Clone and checkout DotFiles
#
if [ ! -d "$DOTFILES" ]; then
  echo -e "🟡 Cloning DotFiles to $DOTFILES\n"
  command gh repo clone ACloudGuru/node-dev-dotfiles $DOTFILES
  command cd $DOTFILES
else
  echo -e "\n✅ DotFiles repo exists at $DOTFILES"
fi

#
# Install Homebrew bundle
#
if [ ! -f "$HOME/Brewfile.lock.json" ]; then
  echo -e "\n🍺 Installing Homebrew bundle (takes some time ⏳)"
  command brew bundle install --file=$DOTFILES/brewfile
else
  echo -e "\n✅ Skipping Homebrew install, lock file exists"
  echo -e "\n📋 Check completion with:\n   brew bundle check --file=$DOTFILES/brewfile"
fi

#
# Link user configs with Stow
#
STOWS=$DOTFILES/config
echo -e "\n🔗 Linking Stow packages"
command stow -v -t $HOME -d $STOWS -S stow # link stow config before creating other links
command stow -v -t $HOME -d $STOWS -S asdf git npm zim zsh

# Link Stow for Tabby to override default config path, can't read from dotfiles.
# @see https://github.com/Eugeny/tabby/discussions/9523
command stow -v -t "$HOME/Library/Application Support" -d $STOWS -S tabby

# Done
echo -e "\n💟 DotFiles installed, restart shell for changes to take effect"

# Prompt to open docs
echo -e "\n📓 Open documentation for next steps with:\n   glow \$DOTFILES/docs/README.md"
