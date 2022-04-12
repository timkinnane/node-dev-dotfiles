# DotFiles

Verion managed user environment configuration.

---

Files in this repo are intended to be cloned into the user path in OS X `~/` to provide rapid
environment configuration with cross-machine consistency.

There's no private data or secrets committed.

For more details on the approach see: https://www.atlassian.com/git/tutorials/dotfiles

# Prerequisites

## Xcode

On a new machine Xcode is required for most anything.

Open a terminal, enter the following, then go for a coffee ☕...

```sh
xcode-select --install
```

## Git

Ensure a global config exists for the user and open it up.

```sh
touch ~/.gitconfig
git config --global --edit
``` 

When editing in shell, use `ESC` to enter commands and `:wq` to save and quit.

Enter the following, substituting your personal details.

```
[user]
	name = Your Name
	email = your@email.com
	username = yourname
[credential]
	helper = osxkeychain
[core]
	excludesfile = ~/.gitignore
[gpg]
	program = /usr/local/bin/gpg
[init]
	defaultBranch = trunk
```

## Homebrew

Configs provided are mostly for apps and utils installed by Homebrew.

Visit [https://brew.sh](https://brew.sh) to confirm install command is up to date.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Now install the top shelf tools... Is it too early for another? 💁‍♀️ ☕

```sh
brew install antibody fnm gh gnupg spaceship alfred warp visual-studio-code yarn direnv awscli openvpn-connect
```

When that's done use Alfred and Warp for the rest.

You could also install fonts now too if you're into that kinda thing:

```sh
brew tap homebrew/cask-fonts
brew install font-victor-mono font-fira-code
```

## Access Keys

Set up keys for secure authentication in your git providers.

First give your computer a unique and easy to identify name in `System Preferences > Sharing`

### SSH

1. Create a new SSH key for this computer and add to `ssh-agent`:
[https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

2. Copy your new SSH key to the clipboard for pasting into accunt settings.

```sh
cat ~/.ssh/id_ed25519.pub | pbcopy
```

3. Load the key/s into GitHub, Gitlab and/or BitBucket, using your computer name from step 1.

### GPG

1. Create a new GPG key if you're vigilant with signed commits:
[https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key)

2. To copy your GPG key, first get the ID

```sh
gpg --list-secret-keys --keyid-format=long
```

3. Use the ID after the type prefix: `ed25519/<THIS PART>`

```sh
gpg --armor --export <YOUR ID> | pbcopy
```

3. Load the key/s into GitHub, Gitlab and/or BitBucket

# Setup

Go to your user home folder

```sh
cd ~/
```

Add an alias to prefix git commands for the dotfiles bare repo tree.

```sh
alias config='git --git-dir=$HOME/.cfg --work-tree=$HOME'
```

Ignore the path we'll clone the bare repo to to avoid recursion.

```sh
echo ".cfg" >> .gitignore
```

Clone dotfiles into home folder.

```sh
git clone --bare git@github.com:acloudguru/dotfiles.git $HOME/.cfg
config checkout
```

Ingore anything in the user folder ~/ that isn't explicitly tracked.

```sh
config config --local status.showUntrackedFiles no
```

Now you're done, but FYI it's a little different to commit to this repo because we have to
explicitly add files and won't seen any untracked in git status.

For example, the first time I added this file, I would...

```sh
config add ./README.md
config commit -m "📗 add a readme file"
config push
```

# Post-install

Reload or create a new terminal tab to initialize shell plugins.

## Antibody

Antibody manages ZSH plugins compiled as static bundles for super fast loads.

The bundle needs to be compiled on first run only.

```sh
antibody bundle < ~/.antibody-plugins > ~/.antibody-bundle.sh
```

Open a new shell for it to take effect, or manually...

```sh
source ~/.antibody-bundle.sh
```

## FNM

FNM is installed for for super fast Node version switching.

Find the [latest stable version](https://nodejs.org/en/about/releases/) codenames or any specifiic
version you need to install. e.g.

```sh
fnm install lts/Gallium # node v16 lts
fnm install lts/Fermium # node v14 lts
```

ZSH is loading FNM and will auto-switch env when entering a path with a `.node-version` file.

If you want to create one to lock in the current version *in a project path*...

```sh
cd my-project
node -v > .node-version
```
