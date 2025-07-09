# dotfiles

Homespun artisanal application configuration, the way grandad used to do it.

## Setup

Common stuff is scripted. Run:

```
% zsh install.sh
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


## dotbot

dotbot is installed as a git submodule.

Setting up dotbot and installing dotfiles:
```sh
./install
```

Updating dotbot:
```sh
git submodule update --remote dotbot
```
