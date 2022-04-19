[Homebrew]: https://docs.brew.sh/
[Oh-My-ZSH]: https://github.com/ohmyzsh/ohmyzsh/
[Antibody]: https://getantibody.github.io/
[Alfred]: https://www.alfredapp.com/
[Insomnia]: https://insomnia.rest/
[Warp]: https://www.warp.dev/
[VS-Code]: https://code.visualstucdio.com/
[Glow]: https://github.com/charmbracelet/glow
[Dotfiles-Tutorial]: https://www.atlassian.com/git/tutorials/dotfiles

# Node Dev DotFiles

Version managed user environment configuration for NodeJS developers.

> ⚠️ This repo is public as it helps setup access to other restricted repos.
> Don't commit private data or secrets.

---

# Prerequisites

## Xcode

On a new machine Xcode is required for most anything.

Open a terminal, enter the following, then go for a coffee ☕...

```sh
xcode-select --install
```

## Homebrew

Homebrew manages most of the utilities and apps we need to do the job.

Visit [https://brew.sh](https://brew.sh) to confirm install command is up to date.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

# Install

This repo clones into the `$HOME` path for consistent cross-machine configuration.
[See here for a tutorial on this approach][Dotfiles-Tutorial].

Run the install script below.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/timkinnane/node-dev-dotfiles/trunk/bin/install-dotfiles)"
```

What does this script do?

1. Clones the repo to `~/.cfg` for working tree at `~/` including:
	- A ZSH config file `.zshrc` with sensible defaults
	- `config` alias to run git commands on this repo
	- `secret` bin script for storing shell secrets in your key chain
	- `awssso` bin script for interacting with AWS SSO profiles
2. Ignores any user files that aren't explicitly tracked
3. Installs app bundle with Homebrew...
  - [Visual Studio Code](https://code.visualstucdio.com/)
  - [Open VPN Connect](https://code.visualstucdio.com/)
  - [Glow markdown CLI](https://github.com/charmbracelet/glow)
4. Compiles an [Antibody][Antibody] bundle of ZSH plugins to load on shell init
5. Takes inputs for creating global git user config file

> `.zshrc` will also source `.zshrc.local` if it exists, so add any personal configs there.

Other apps can be manually installed, e.g recommended: [Alfred][Alfred], [Insomnia][Insomnia], [Warp][Warp].

```
brew install alfred insomnia warp
```

# Setup

Continue to docs for more detailed next steps:

1. [Authenticating tools with AWS SSO](./docs/AWSSSO.md)
2. [Access control with SSH and GPG keys](./docs/KEYS.md)
3. [Manage language versions with ASDF](./docs/ASDF.md)

# Links

- [Contribution guide](./docs/CONTRIBUTING.md)
- [DotFiles tutorial][Dotfiles-Tutorial]
- [Homebrew][Homebrew]
- [Oh-My-ZSH][Oh-My-ZSH]
- [Antibody][Antibody]
