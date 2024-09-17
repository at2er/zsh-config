# source this file in .zshrc to apply config
#
# AUTHOR: at2er (xb0515@outlook.com)
# LICENSE: MIT LICENSE

# prompt
PROMPT_EXIT_CODE='%B%F{red}%(?..%? )%f%b'
PROMPT_DIR='%1~'
#PROMPT_SYMBOL='%(!.%B%F{red}#%f%b.%B%F{green}>%f%b)'
PROMPT_SYMBOL='%(?.%B%F{green}>%f%b.%B%F{red}>%f%b)'
PROMPT_ROOT='%(!.%B%F{red}[ROOT]%f%b.)'
PROMPT="${PROMPT_ROOT}${PROMPT_EXIT_CODE}${PROMPT_DIR} ${PROMPT_SYMBOL} "

# history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
setopt append_history
setopt extended_history
setopt histignorespace
setopt share_history
setopt hist_ignore_dups

# alias
alias s="neofetch"
alias ls="ls --color=auto"
alias ll="ls -l"
alias gs="git status"
alias gll="git log --oneline"
alias spm="sudo pacman"
alias ra="ranger"
alias tm="tmux"
alias tma="tmux attach"
#alias jo="joshuto"
alias screen-capture="ffmpeg -video_size 1440x900 -framerate 24 -f x11grab -i $DISPLAY -f pulse -i 0 output.mp4"
alias lg="lazygit"
alias mt="neomutt"
alias vi="nvim"
#alias dotfiles="git --git-dir=\"$HOME/.dotfiles/\" --work-tree=\"$HOME\""

autoload -U compinit && compinit

# plugin
source /usr/local/share/zsh/plugins/Aloxaf/fzf-tab/fzf-tab.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# completion style
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':completion:*' rehash true

export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'

export EDITOR="nvim"
export MANPAGER="nvim +Man!"

eval "$(fzf --zsh)"

bindkey -v
bindkey "^[[H" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[P" delete-char

export RUSTUP_UPDATE_ROOT=https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
