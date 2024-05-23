[Homebrew]: https://docs.brew.sh/
[Xcode]: https://developer.apple.com/xcode/

# Prerequisites

The following are required **before** executing the install script.

## Cert Bundle

The Zscaler cert bundle should be downloaded to `~/.ssh/zscaler-cert-bundle.pem`

This location is exported as `CERTIFICATE_BUNDLE` and referenced for a variety of CLIs and environments.

## Xcode

On a new (mac) machine [Xcode][Xcode] is required for most anything.

Open a terminal, enter the following, then go for a coffee ☕...

```sh
xcode-select --install
```

It may say "Command line tools are already installed". If so, continue to next steps.

## Homebrew

[Homebrew][Homebrew] manages most of the utilities and apps we need to do the job.

Visit [https://brew.sh](https://brew.sh) to confirm install command is up to date.

See [Homebrew on Linux](https://docs.brew.sh/Homebrew-on-Linux) for Windows subsystem setup.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

Follow "Next Steps" from the Homebrew installer's terminal output.

Ensure it's working before proceeding...

```sh
brew -v
```

## Github

Since Github auth from the default terminal can be tricky, the best approach to cloning this repo is to use the GitHub CLI.

Install it with Homebrew...

```
brew install gh
```

Then authenticate your user, via web login...

```
gh auth login
```

---
Continue to [INSTALL](./INSTALL.md)
