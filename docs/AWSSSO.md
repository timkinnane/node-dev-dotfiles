# Authenticating tools with AWS SSO

Some Node libraries like Oprah and Serverless Framework use legacy credentials to
authenticate AWS accounts, so we need a tool to populate those values from SSO sessions.

### Setup

If you don't have `~/.aws/config` with your profile configs already, create one:

```
aws configure sso
```

You'll need to do that once per profile to create the local config.

> Tip:  Give profiles a simple name like `dev`, `staging` or `production`.

> Warning: Use `export AWS_PROFILE=` if there's an active profile to not assign configs to the wrong one.

### Usage

Switch into the desired profile, for example `dev`:

```sh
awssso dev
```

There's also a shortcut to open the web console for a service using your profile:

```sh
aws-console dev s3
```

See [Granted docs](https://granted.dev/) for more details.

---

<div style="float:left">

  [BACK TO README](../README.md#Setup)
  
</div>

<div style="float:right">

  [NEXT STEP](./KEYS.md)

</div>
