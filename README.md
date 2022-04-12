# Node Dev DotFiles

Verion managed user environment configuration for NodeJS developers.

---

# Prerequisites

## Xcode

On a new machine Xcode is required for most anything.

Open a terminal, enter the following, then go for a coffee ☕...

```sh
xcode-select --install
```

# Install

Files in this repo are intended to be cloned into the user path in OS X `~/` to provide rapid
configuration with cross-machine consistency. There's no private data or secrets committed.

For more details on the approach see: https://www.atlassian.com/git/tutorials/dotfiles

```sh
cd ~/
```

Add an alias to prefix git commands for the dotfiles repo tree.

```sh
alias config='git --git-dir=$HOME/.cfg --work-tree=$HOME'
```

Clone dotfiles into home folder and checkout the repo.

```sh
git clone --bare git@github.com:acloudguru/dotfiles.git $HOME/.cfg
config checkout
```

Ingore anything in the user folder ~/ that isn't explicitly tracked.

```sh
config config --local status.showUntrackedFiles no
```

Now you're done, but FYI it's a little different to commit to this repo because we have to
explicitly track new files (won't see them in git status otherwise).

**For example**, the first time I added this file, I would...

```sh
config add ./README.md
config commit -m "📗 add a readme file"
config push
```

# Setup

Now that environment and utility configs have been added, we can install the tools themselves...

## 1. Homebrew

Homebrew manages all the utilities and apps we need to do the job.

Visit [https://brew.sh](https://brew.sh) to confirm install command is up to date.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Now install the app Bundle defined in your dot files... Is it too early for another? 💁‍♀️ ☕

```sh
brew bundle --no-lock
```

When that's done you can open Alfred and Warp to make the rest easier.

## 2. Antibody

Antibody manages ZSH (shell) plugins compiled as static bundles for super fast loads.

The bundle needs to be compiled on first run only.

```sh
antibody bundle < ~/.antibody-plugins > ~/.antibody-bundle.sh
```

Open a new shell for it to take effect, or manually...

```sh
source ~/.antibody-bundle.sh
```

## 3. FNM

FNM is installed for super fast Node version switching.

Find the [latest stable version](https://nodejs.org/en/about/releases/) codenames or any specifiic
version you need to install. e.g.

```sh
fnm install lts/Gallium # node v16 lts
fnm install lts/Fermium # node v14 lts
```

ZSH is loading FNM and will auto-switch env when entering a path with a `.node-version` file.

**For example** create a lock file for the current Node version *in a project path*:

```sh
node -v > .node-version
```

## 4. Git

Add a global config for your user (with VS Code now installed).

### Global Config

```sh
code ~/.gitconfig
```

Paste the following and replace your details. This extends defaults from dot files.

```
[user]
	name = Your Name
	email = your@email.com
	username = yourname
[include]
  path = ~/.gitconfig-defaults
```

### Access Keys

> Tip: give your computer a unique and easy to identify name in `System Preferences > Sharing`

Follow tutorial to create a new SSH key for this computer and add to `ssh-agent`:
[https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

Now you can use the GitHub CLI to authenticate your user and upload the cert.

```sh
gh auth login
```

### GPG (optional)

If you want to be vigilant with signed commits, also create a GPG key:
[https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key)

To copy your GPG key, first get the ID

```sh
gpg --list-secret-keys --keyid-format=long
```

Export the key to the clipboard using the ID after the type prefix, e.g. `ed25519/<THIS PART>`

```sh
gpg --armor --export <YOUR ID> | pbcopy
```

Load the key/s into GitHub, Gitlab and/or BitBucket
