# Manage language versions with ASDF

[ASDF](http://asdf-vm.com/) is installed for switching language environment versions.

We need to install the Node plugin separately...

```
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
```

> 👨‍💻 List the all Node LTS versions with `asdf list all nodejs`

Install the Node version you need for your project (e.g. LTS v14 or v16)...

```sh
asdf install nodejs lts-gallium # node v16 lts
asdf install nodejs lts-fermium # node v14 lts
```

You can set a global version:

```
asdf global nodejs lts-gallium
```

ASDF will also read version files and switch automatically.

**For example** create a lock file for the current Node version *in a project path*:

```sh
node -v > .node-version
```

If required, follow a similar process for Python version management.

See https://github.com/danhper/asdf-python

---

<div style="float:left">

  [BACK TO README](../README.md#Setup)
  
</div>

<div style="float:right">

  [NEXT STEP](./SECRETS.md)

</div>
