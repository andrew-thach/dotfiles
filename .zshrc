export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /etc/profile

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

###### Use regular fonts in TTY ######
if [[ "$TERM" == "xterm-kitty" ]] || [[ -n "$KITTY_WINDOW_ID" ]]; then
  [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
else
  # Source your preferred fallback prompt/theme here, or do nothing for default
  # Example: source ~/.zshrc-plain
fi
######################################

POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true


# History saves
HISTFILE=~/.zsh_history
HISTSIZE=420000
SAVEHIST=420000

#  Immediate append
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "

setopt EXTENDED_HISTORY

#powerline-daemon -q
#. /usr/share/powerline/bindings/zsh/powerline.zsh
#
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Changing "ls" to "eza"
# alias ls='eza -al --color=always --group-directories-first' # my preferred listing
# alias la='eza -a --color=always --group-directories-first'  # all files and dirs
# alias ll='eza -l --color=always --group-directories-first'  # long format
# alias lt='eza -aT --color=always --group-directories-first' # tree listing

alias vim=nvim

# Set up socket for ssh-agent.
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export MANPAGER='nvim +Man!'

