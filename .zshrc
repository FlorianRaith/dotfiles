# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/florian/.oh-my-zsh"

ZSH_THEME="robbyrussell"

HIST_STAMPS="dd.mm.yyyy"

plugins=(
	git
	fzf
	docker
	docker-compose
    zsh-syntax-highlighting
    zsh-autosuggestions
    sudo 
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias ssh="kitty +kitten ssh"
export TERM="xterm-kitty"

alias ls='EXA_ICON_SPACING=2 exa --icons --group-directories-first'
alias ll='ls -l'
alias la='ll -a'
alias vim=nvim
alias mv='mv -i'
alias rm='rm -i'
alias gs='git status'

source $HOME/.dotfiles.zsh

function open () {
  xdg-open "$@">/dev/null 2>&1
}

# not perfect :(
# export FZF_CTRL_T_COMMAND="find . -not -path '*/\.*' -a -not \( \( -name node_modules -o -name vendor -o -name pkg \) -prune \)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
