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

To use signed commits you also need to create a GPG key. Follow the steps here to create a new GPG key:
[https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key](https://docs.github.com/en/github/authenticating-to-github/managing-commit-signature-verification/generating-a-new-gpg-key)

Continue on to the [link in step 14](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account) of the guidance above to add the GPG key to your GitHub account. You can also load the key into Gitlab and/or BitBucket if you use them.

Grab your GPG key id by running the following command, then copy the id after the type prefix in what is returned e.g. `ed25519/<THIS PART>`

```sh
gpg --list-secret-keys --keyid-format=long
```

Open the `.gitconfig` file in your home directory and add the following properties to your current config:

```sh
[user]
	signingkey = <COPIED KEY>
[commit]
	gpgsign = true
```

Download <b>GPG Suite</b> by running `brew install --cask gpg-suite` in the terminal.

Next time you commit, you will be prompted to enter the passphrase that you used during the GPG set up steps.

Once you have committed, you can run `git log --show-signature` to verify that your commit was signed.

Additionally, in GitHub, your commits will show up with the green 'Verified' badge.