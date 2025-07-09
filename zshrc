# Uncomment for startup performance analysis (1/2)
#zmodload zsh/zprof

# Force the path array to have unique values
# Prepend: path=(value $path)
# Append: path+=(value)
typeset -U path PATH

# Array of 256-color compatible color escapes.
typeset -A clr
clr[reset]='%F{F}'
clr[red]='%F{9}'
clr[green]='%F{10}'
clr[yellow]='%F{11}'
clr[blue]='%F{12}'
clr[purple]='%F{13}'
clr[cyan]='%F{13}'

# Initialize the completion system.
autoload -Uz compinit && compinit

# Make all completion functions use their verbose forms.
zstyle ':completion:*' verbose true

# List directories first in file completion output.
zstyle ':completion:*' list-dirs-first true

# Always enable menu-style completion even if there are few matches.
zstyle ':completion:*' menu select

# Initialize the version control awareness system.
autoload -Uz vcs_info

# Enable the git backend for vcs_info.
zstyle ':vcs_info:*' enable git

# Detect changes in the local repository so %c and %u will work.
zstyle ':vcs_info:git:*' check-for-changes true

# Formatting for %c (staged changes) format string.
zstyle ':vcs_info:git*' stagedstr "${clr[green]}+${clr[reset]}"

# Formatting for %u (unstaged changes) format string.
zstyle ':vcs_info:git*' unstagedstr "${clr[red]}+${clr[reset]}"

# Normal prompt format string.
vcs_info_git_formats=":${clr[purple]}%b${clr[reset]}%u%c"
zstyle ':vcs_info:git*' formats "${vcs_info_git_formats}"

# Format prompt string used during an "action" like a rebase or merge.
zstyle ':vcs_info:git*' actionformats "${vcs_info_git_formats}:${clr[cyan]}%a${clr[reset]}"

# Change directory by typing directory name if it's not a command.
setopt auto_cd

# Make cd push the old directory onto the directory stack.
setopt auto_pushd

# Add commands to history as they are entered, don't wait for shell to exit.
setopt inc_append_history

# Allow parameter expansion, command substitution, and arithmetic expansion to
# happen in prompts.
setopt prompt_subst

# Executed before each prompt.
precmd() {
  vcs_info
}

# Add a marker to our prompt if we're in a toolbox container.
tbx=""
[[ -r /run/.containerenv ]] && tbx="⬢ "

# https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html
NEWLINE=$'\n'
PROMPT='${clr[red]}${tbx}${clr[reset]}${clr[blue]}%~${clr[reset]}${vcs_info_msg_0_}%# '

alias cds="$HOME/src"
alias ll='ls -lh --color=auto'
alias ls='ls -h --color=auto'

if $darwin; then
  alias ll='ls -lhG'
  alias ls='ls -hG'
fi

# Have a lot of fun!
alias ..='cd ..'

# Tidy up and truncate output filenames to avoid hitting filename size limitations.
alias ydl='youtube-dl -o "%(title).150s-%(id)s.%(ext)s" --restrict-filenames'

if [[ "$(uname -s)" == "Darwin" ]]; then
  path=("/opt/homebrew/bin" "/opt/homebrew/sbin" $path)
  path=("/opt/homebrew/opt/coreutils/libexec/gnubin" $path)
fi

# go
export GOPATH="$HOME/go"
path=("$GOPATH/bin" $path)

# rust
path=("$HOME/.cargo/bin" $path)

# volta.sh
export VOLTA_HOME="$HOME/.volta"
path=("$VOLTA_HOME/bin" $path)

# Ensure XDG binpath is in PATH.
path=("$HOME/.local/bin" $path)

path+=("$HOME/.config/emacs/bin")
 
# kubernetes
if type kubectl &> /dev/null; then
  path+=("$HOME/.krew/bin")
  alias k="kubectl"
  source <(kubectl completion zsh)
fi

# Fix navigation cluster keys within zsh
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[2~" quoted-insert
bindkey "^[[3~" delete-char
bindkey "^[[5~" beginning-of-history
bindkey "^[[6~" end-of-history

if [[ -d "$HOME/.antidote" ]] then
  source "$HOME/.antidote/antidote.zsh"
  antidote load "$HOME/.zsh_plugins.txt"
fi

# Stick any site-local configuration in here (i.e. employer-specific config).
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# Uncomment for startup performance analysis (2/2)
#zprof
