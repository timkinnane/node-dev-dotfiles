# Manage language versions with ASDF

[ASDF](http://asdf-vm.com/) is installed for switching language environment versions.

We use ASDF to manage NodeJS and Python (required to proceed to AWS SSO setup).

## Setup NodeJS

Install the Node plugin.

```
asdf plugin-add nodejs
```

> 👨‍💻 List the all Node LTS versions with `asdf list all nodejs lts`

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

### Setup Python

Install the Python plugin

```
asdf plugin-add python
```

> 👨‍💻 List the all Python 3 versions with `asdf list all python 3`

Install any version greater than `3.9.0` or for best compatibility, simply `3.9.12`.

```sh
asdf install python 3.9.12
```

Set the global version:

```sh
asdf global python 3.9.12
```

---

<div style="float:left">

  [BACK TO README](../README.md#Setup)
  
</div>

<div style="float:right">

  [NEXT STEP](./AWSSSO.md)

</div>
