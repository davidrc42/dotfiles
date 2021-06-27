# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

HISTFILE=~/.histfile
HISTSIZE=10000
HISTFILE=10000
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
alias matrix='cmatrix -C blue'
alias q='exit'
alias p='sudo pacman'
alias r='ranger'
alias py='python3'
alias black='/home/david/.local/bin/black'
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

# vi mode
# bindkey -v
# export KEYTIMEOUT=1
#
# Change cursor shape for different vi modes.
 function zle-keymap-select {
   if [[ ${KEYMAP} == vicmd ]] ||
        [[ $1 = 'block' ]]; then
            echo -ne '\e[1 q'
              elif [[ ${KEYMAP} == main ]] ||
                     [[ ${KEYMAP} == viins ]] ||
                            [[ ${KEYMAP} = '' ]] ||
                                   [[ $1 = 'beam' ]]; then
                                       echo -ne '\e[5 q'
                                         fi
                                         }
                                         zle -N zle-keymap-select
                                         zle-line-init() {
                                             zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
                                                 echo -ne "\e[5 q"
                                                 }
                                                 zle -N zle-line-init
                                                 echo -ne '\e[5 q' # Use beam shape cursor on startup.
                                                 preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

#PLUGINS
#source ~/gitrepos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/gitrepos/zsh-autosuggestions/zsh-autosuggestions.zsh
#MUST BE THE LAST ONE
source ./gitrepos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
