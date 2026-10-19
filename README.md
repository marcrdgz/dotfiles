# dotfiles

### Requirements

- [GNU Stow](https://www.gnu.org/software/stow/)

### Installation

> :warning: **Warning**: Remember to backup your dotfiles before the symlink is done

We need to source all of the configurations by running the following command:

```bash
stow -t $HOME -v nvim tmux fish ghostty claude
```
