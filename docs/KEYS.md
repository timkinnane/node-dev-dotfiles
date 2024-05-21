# SSH and GPG Keys

Add a global config for your user (with VS Code now installed).

> 🏷️ Give your computer a unique and easy to identify name in `System Preferences > Sharing`

Follow tutorial to create a new SSH key for this computer and add to `ssh-agent`:
[https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

Now you can use the GitHub CLI to authenticate your user and upload the cert.

```sh
gh auth login
```

Choose `GitHub.com`, `SSH` and the newly created cert, e.g. `~/id_ed25519.pub`

### GPG (optional)

To use signed commits you also need to create a GPG key:
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
