# Dot Files

Version managed portable development environment configuration for JS/TS devs on OSX.

>[!IMPORTANT]
> This repo contains no personal data or secrets, but some configs are specific to our org and
> developer tooling. For example, it has some opinionated usage of AWS SSO and cert bundles.
>
> All modules are linked in [.zshrc](../zsh/.zshrc) and can be disabled to choose which to apply.

## Setup

1. Install [PREREQUISITES](./PREREQUISITES.md) before executing install script
2. Follow [INSTALL](./INSTALL.md) instructions to clone and install default tools
3. Assign [SECRETS](./SECRETS.md) required for shell and git config
4. Setup [ASDF](./ASDF.md) for multiple language and version support
5. Configure [AWS SSO](./AWSSSO.md) profiles for authenticating with AWS
6. Create [KEYS](./KEYS.md) for SSH and GPG access to git cloud providers

## Updating

#### Home Configs

When installing a new tool that reads configuration from `$HOME`:
1. Create folder for configs: `mkdir $DOTFILES/config/my-new-tool`
2. Move any default configs: `mv $HOME/my-new-tool-config $DOTFILES/config/my-new-tool`
3. Stow to link back to home: `stow -v -t $HOME -d $DOTFILES/config -S my-new-tool`

#### Shell Configs

When adding a new environment module (any custom shell configs, functions, alias etc):
1. Create (and edit) code: `touch $DOTFILES/environment/my-new-module.sh`
2. Start a new terminal session or run `zsh` to initialise in place

### Brew Bundles

After adding a new package to `brewfile`, run `brew bundle install --file=$DOTFILES/brewfile`

### All Changes

**Commit and push** any changes above to save for future installs.

**Re-running install** script will also reload modules `. $DOTFILES/install.sh`
