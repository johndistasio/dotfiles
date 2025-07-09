# dotfiles

Dotfiles are managed with [dotbot](https://github.com/anishathalye/dotbot).

## Prerequisites

1. Change the default shell to zsh.
1. Install [delta](https://github.com/dandavison/delta).
1. Install [antidote](https://github.com/mattmc3/antidote).

## Setup

Clone this repository somewhere, enter it, and run:

```
./install --verbose --dry-run
./install --verbose
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
