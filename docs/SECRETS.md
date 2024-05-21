[Keychain]: https://ss64.com/osx/security.html
[Weather CLI]: https://github.com/chubin/wttr.in

## Secrets

The [`secrets.sh`](../environment/secret.sh) file provides a function to store key/value pairs in Apple [Keychain] for simple and secure loading.

Dotfiles exports a set of secrets as environment variables, allowing per-user shell configuration without committing to source.

### Setup

Set **all below** that apply, e.g. `secret set NPM_TOKEN "<YOUR_TOKEN>"`

| Variable             | Description                                             | Example                         |
| -------------------- | ------------------------------------------------------- | ------------------------------- |
| `NPM_TOKEN`          | Allow pulling private packages from the NPM registry    |                                 |
| `GITHUB_TOKEN`       | Set to allow interactions with API or packages registry |                                 |
| `HOME_TOWN`          | Set for `weather` alias using [Weather CLI]             | `LONDON`                        |
| `GIT_NAME`           | Set your git username for generating user config        | `Dev`                           |
| `GIT_EMAIL`          | Set your git username for generating user config        | `dev@gmail.com`                 |
| `GIT_USERNAME`       | Set your git username for generating user config        | `dev`                           |

### Usage

- Set secret value with `secret set MY_SECRET_KEY MY_SECRET_VALUE`
- Get secret value with `secret get MY_SECRET_KEY`
- Unset secret with `secret unset MY_SECRET_KEY`
- Export secret to shell `secret export MY_SECRET_KEY`

---
Continue to [ASDF](./ASDF.md)
