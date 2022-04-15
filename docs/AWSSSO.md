# Authenticating tools with AWS SSO

Some Node libraries like Oprah and Serverless Framework use legacy credentials to
authenticate AWS accounts, so we need a tool to populate those values from SSO sessions.

If you don't have `~/.aws/config` with your profile configs already, use AWS CLI to create one:

> Tip:  Give profiles a simple name like `dev`, `staging` or `production`.

```
aws configure sso
```

Run our AWS SSO tool installer (which also adds your Zscaler cert to Python's certificate bundle).

```sh
awssso install
```

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
