# Authenticating tools with AWS SSO

Some Node libraries like Oprah and Serverless Framework use legacy credentials to
authenticate AWS accounts, so we need a tool to populate those values from SSO sessions.

### Install

Run our AWS SSO tool installer. It clones the `aws-sso-credentials` tool into `~/lib`.

```sh
awssso install
```

If you don't have `~/.aws/config` with your profile configs already, create one:

```
awssso init
```

> Tip:  Give profiles a simple name like `dev`, `staging` or `production`.

You'll need to do that once per profile to create the local config. This is just an alias for `aws
configure sso` but it also ensures no other profile is defined in env vars, which can otherwise
risk assigning configs to the wrong profile.

### Usage

Once each day, you'll need to login to populate credentials for any profiles in `~/.aws/config`

```sh
awssso login
```

Then switch into the desired profile, for example `dev`

```sh
awssso dev
```

---

<div style="float:left">

  [BACK TO README](../README.md#Setup)
  
</div>

<div style="float:right">

  [NEXT STEP](./KEYS.md)

</div>
