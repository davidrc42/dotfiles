# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

export EDITOR=nvim
export VISUAL=nvim
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
autoload -U colors && colors

function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
                        3}
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


#ALIASES
alias ls='exa -al --group-directories-first --icons'
alias c='clear'
alias v='nvim'
alias matrix='cmatrix -C yellow'
alias q='exit'
alias p='sudo pacman'
alias r='ranger'
alias py='python3'
alias black='/home/david/.local/bin/black'
alias ping='ping -c 1'
alias wikitro='wikit --lang ro'
alias monitorb='xrandr --output VGA-1 --brightness'
export EDITOR='nvim'

mkdcd()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
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
#source ~/gitrepos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/gitrepos/zsh-autosuggestions/zsh-autosuggestions.zsh
#MUST BE THE LAST ONE
source ./gitrepos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
