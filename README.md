# dotfiles

Dotfiles are managed with [dotbot](https://github.com/anishathalye/dotbot).

## Setup

Clone this repository somewhere, enter it, and run:

```
./install --dry-run --verbose
./install
```

## Manual setup

Site-local/personal stuff isn't scripted.

### git User Setup

Create `~/.gitconfig.local` as follows:

```
[user]
  name = "<name>"
  email = "<email>"
```

### zsh Setup

Place custom `zsh` configuration in `~/.zshrc.local`.
