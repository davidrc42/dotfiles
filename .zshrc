# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

export EDITOR='nvim'
export VISUAL='nvim'
export PATH=~/bin:/home/david/.local/bin:$PATH
export PATH
export FZF_DEFAULT_COMMAND="find -L"

SAVEHIST=10000
HISTFILE=~/.zsh_history
HISTSIZE=10000
HISTFILE=10000
setopt appendhistory
fc -W



unsetopt beep
export EDITOR='nvim'
export VISUAL='nvim'
export PATH=~/bin:/home/david/.local/bin:$PATH
export PATH
export FZF_DEFAULT_COMMAND="find -L"

SAVEHIST=10000
HISTFILE=~/.zsh_history
HISTSIZE=10000
HISTFILE=10000
setopt appendhistory
fc -W

NPM_PACKAGES="~/.npm_packages"

export PATH="$PATH:$NPM_PACKAGES/bin"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

unsetopt beep
autoload -U colors && colors

function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
                        3}
PS1="%B%{$fg[blue]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[blue]%}]%{$reset_color%}$%b "

# autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vim maps for menu select
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
export KEYTIMEOUT=1

# cursor in vim mode


#ALIASES
alias rb='doas reboot'
alias m='mkdir'
alias ani-cli='ani-cli -q best'
alias sd='doas poweroff'
alias nf='neofetch'
# alias ls='exa -al --group-directories-first --icons'
alias dex='~/code/dexonlineCLI/main.py'
alias c='clear'
alias v='nvim'
alias matrix='cmatrix -C yellow'
alias q='exit'
alias p='doas pacman'
alias r='ranger'
alias py='python3'
alias black='/home/david/.local/bin/black'
alias ping='ping -c 1'
alias wikitro='wikit --lang ro'
alias monitorb='xrandr --output VGA-1 --brightness'
alias cdl='cdls'

zathura()
{
    setsid zathura "$1" &&
        exit
}

zaread()
{
    setsid zaread "$1" &&
        exit
}

mkdcd()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

cdls()
{
    cd "$1" &&
        ls
}

stt()
{
    setsid ~/simple-time-tool/main.py &&
        exit
}

#range: 1-4437
b(){
    echo "$1" > /sys/class/backlight/intel_backlight/brightness
}

#VIM
bindkey -v

bindkey '^a' autosuggest-accept
bindkey '^e' autosuggest-execute
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#D3D3D3"


#PLUGINS
source ~/gitrepos/zsh-autosuggestions/zsh-autosuggestions.zsh
#MUST BE THE LAST ONE
source ~/gitrepos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000

alias luamake=/home/david/lua-language-server/3rd/luamake/luamake
fpath=($fpath "/home/david/.zfunctions")
