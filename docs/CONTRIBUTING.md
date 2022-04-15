
Because DotFiles is a "bare" repository, it's a little different to commit to because new files need
be explicitly tracked (you won't see them in git status otherwise).

The `config` alias makes it easier to use git commands with the `git-dir` and `work-tree` arguments
preset to your `$HOME` folder.

To commit any changes, first checkout a new branch. e.g.

```sh
config checkout -b feat/adding-docs
```

Now make the changes, updating the readme for instance...

```sh
config add ./README.md
config commit -m "📗 add a readme file"
```

You can review the status of tracked files and push...

```sh
config status
config push
```

All done. Now open a PR from your branch to `trunk`.
