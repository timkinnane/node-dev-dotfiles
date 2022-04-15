# Access control with SSH and GPG keys

Add a global config for your user (with VS Code now installed).

> Tip: give your computer a unique and easy to identify name in `System Preferences > Sharing`

Follow tutorial to create a new SSH key for this computer and add to `ssh-agent`:
[https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

Now you can use the GitHub CLI to authenticate your user and upload the cert.

```sh
gh auth login
```

### GPG (optional)

If you want to be vigilant with signed commits, also create a GPG key:
[https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key)

To copy your GPG key, first get the ID

```sh
gpg --list-secret-keys --keyid-format=long
```

Export the key to the clipboard using the ID after the type prefix, e.g. `ed25519/<THIS PART>`

```sh
gpg --armor --export <YOUR ID> | pbcopy
```

Load the key/s into GitHub, Gitlab and/or BitBucket

---

<div style="float:left">

  [BACK TO README](../README.md#Setup)
  
</div>

<div style="float:right">

  [NEXT STEP](./ASDF.md)

</div>
