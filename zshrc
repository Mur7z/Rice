# Fix the Java Problem

export _JAVA_AWT_WM_NONREPARENTING=1

export ZSH="/home/rk7yl/.oh-my-zsh"

ZSH_THEME="aphrodite"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions history-substring-search bgnotify)

source $ZSH/oh-my-zsh.sh

# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

# AutoCompletions

autoload -U compinit && compinit

# AutoLogin

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

alias vi='nvim'

# Manual aliases

alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias cat='bat'
alias sech='yay -Sc --noconfirm && yay -c --noconfirm'
