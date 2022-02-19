#
#                 _                   
#                | |                  
#         _______| |__  _ __ ___      
#        |_  / __| '_ \| '__/ __|     
#       _ / /\__ \ | | | | | (__      
#      (_)___|___/_| |_|_|  \___|     
#                                     

# enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/florian/.oh-my-zsh"

ZSH_THEME="robbyrussell"

HIST_STAMPS="dd.mm.yyyy"



#             _             _                
#            | |           (_)               
#       _ __ | |_   _  __ _ _ _ __  ___      
#      | '_ \| | | | |/ _` | | '_ \/ __|     
#      | |_) | | |_| | (_| | | | | \__ \     
#      | .__/|_|\__,_|\__, |_|_| |_|___/     
#      | |             __/ |                 
#      |_|            |___/                  

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



#                                  _            
#                                 | |           
#        _____  ___ __   ___  _ __| |_ ___      
#       / _ \ \/ / '_ \ / _ \| '__| __/ __|     
#      |  __/>  <| |_) | (_) | |  | |_\__ \     
#       \___/_/\_\ .__/ \___/|_|   \__|___/     
#                | |                            
#                |_|                            

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export TERM="xterm-kitty"



#             _ _                          
#            | (_)                         
#        __ _| |_  __ _ ___  ___  ___      
#       / _` | | |/ _` / __|/ _ \/ __|     
#      | (_| | | | (_| \__ \  __/\__ \     
#       \__,_|_|_|\__,_|___/\___||___/     
#                                          
#                                          

alias ssh="kitty +kitten ssh"
alias ls='EXA_ICON_SPACING=2 exa --icons --group-directories-first'
alias ll='ls -l'
alias la='ll -a'
alias llm='ll --sort modified'
alias lm='l --sort modified'
alias vim=nvim
alias mv='mv -i'
alias rm='rm -i'
alias gs='git status'
alias pferd='$HOME/.local/bin/pferd'

source $HOME/.dotfiles.zsh




#        __                  _   _                      
#       / _|                | | (_)                     
#      | |_ _   _ _ __   ___| |_ _  ___  _ __  ___      
#      |  _| | | | '_ \ / __| __| |/ _ \| '_ \/ __|     
#      | | | |_| | | | | (__| |_| | (_) | | | \__ \     
#      |_|  \__,_|_| |_|\___|\__|_|\___/|_| |_|___/     
#                                                       
#                                                       

# open a file with the file type associated default program
# e.g. a PDF file is opened with a PDF reader or a video is opened with a video player
function open () {
  xdg-open "$@">/dev/null 2>&1
}

# clip utility, copy when piped, show copied value when not piped
function clip () {
    if [[ ! -t 0 ]]; then
        xclip -selection clipboard -in
    else
        xclip -selection clipboard -out
    fi
}

# paste the current git branch and bind it to CTRL+B
if [[ $- == *i* ]]; then
    # CTRL-B - Paste the current branch
    git-currentbranch-paste() {
        LBUFFER="$LBUFFER$(git rev-parse --abbrev-ref HEAD)"
        local ret=$?
        zle redisplay
        typeset -f zle-line-init >/dev/null && zle zle-line-init
        return $ret
    }
    zle     -N   git-currentbranch-paste
    bindkey '^B' git-currentbranch-paste
fi



#             _   _                     _          __  __      
#            | | | |                   | |        / _|/ _|     
#        ___ | |_| |__   ___ _ __   ___| |_ _   _| |_| |_      
#       / _ \| __| '_ \ / _ \ '__| / __| __| | | |  _|  _|     
#      | (_) | |_| | | |  __/ |    \__ \ |_| |_| | | | |       
#       \___/ \__|_| |_|\___|_|    |___/\__|\__,_|_| |_|       
#                                                              
#                                                              

zstyle ':completion:*' file-sort date

# not perfect :(
# export FZF_CTRL_T_COMMAND="find . -not -path '*/\.*' -a -not \( \( -name node_modules -o -name vendor -o -name pkg \) -prune \)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
