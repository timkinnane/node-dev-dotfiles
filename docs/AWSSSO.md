[Granted]: https://granted.dev

# AWS SSO

Some libraries use legacy credentials to authenticate AWS accounts

[Granted] can populate those values from SSO sessions.

## Setup

If you don't have `~/.aws/config` with your profile configs already, create one...

```sh
sso new
```

You'll need to do that once per profile to create the local config.

> [!Tip]
> Give profiles a simple name like `dev`, `staging` or `production`.
>
> The command is an alias for `aws configure sso` but also unsets active profile so configs don't
> apply to the wrong one.

## Usage

Switch into the desired profile, for example `dev`:

```sh
sso dev
```

---
Continue to [KEYS](./KEYS.md)
