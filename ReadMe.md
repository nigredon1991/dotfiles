# Dotfiles with chezmoi

### Dotfiles init

```
chezmoi init git@github.com:nigredon1991/dotfiles.git
chezmoi update -v
```

### Workflow add
```
chezmoi add <PATH_TO_FILE>
chezmoi git add -p
chezmoi git commit
chezmoi git push
```


### Workflow update

*template*
```
chezmoi edit --watch $FILENAME
```

*no-template*
```
chezmoi edit --apply $FILENAME
# or
# edit file $FILENAME
chezmoi re-add
```

### Example
```toml
[data]
git_name = "<UserName>"
git_email = "Email"
```
