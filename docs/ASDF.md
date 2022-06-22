# Manage language versions with ASDF

[ASDF](http://asdf-vm.com/) is installed for switching language environment versions.

We use ASDF to manage NodeJS and Python (required to proceed to AWS SSO setup).

## Setup NodeJS

Install the Node plugin.

```
asdf plugin-add nodejs
```

Install and define a **global** Node version. e.g. LTS Gallium (v16)...

```sh
asdf install nodejs lts-gallium
```

> 👨‍💻 List the all Node LTS versions with `asdf list all nodejs lts`

When you move into project directories, you may need to install the local version.

**For example** in a project path there might be a `.tool-versions` with `nodejs 14.15.4`

To make that version available, install it with:

```sh
asdf install nodejs 14.15.4
```

For MAC M1, if you want to install nodejs version < 16.x, run with `arch -x86_64`. e.g: 

```sh
arch -x86_64 asdf install nodejs 14.15.4
```

Now changing into that directory will activate the correct version of node locally.

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
