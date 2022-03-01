#            _       _    __ _ _                     _          
#           | |     | |  / _(_) |                   | |         
#         __| | ___ | |_| |_ _| | ___  ___   _______| |__       
#        / _` |/ _ \| __|  _| | |/ _ \/ __| |_  / __| '_ \      
#       | (_| | (_) | |_| | | | |  __/\__ \_ / /\__ \ | | |     
#      (_)__,_|\___/ \__|_| |_|_|\___||___(_)___|___/_| |_|     
#                                                              
# add aliases for working and updating the dotfiles repo
# also keep track of what files to include

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dotfiles-update="dotfiles add \
                       .zshrc \
                       .p10k.zsh \
                       .config/i3 \
                       .gitignore \
                       .vimidearc \
                       .config/mpv \
                       .config/nvim \
                       .config/rofi \
                       .config/kitty \
                       .config/picom \
                       .dotfiles.zsh \
                       .config/ranger \
                       .config/gtk-3.0 \
                       .config/polybar \
                       .config/zathura \
                       .config/neofetch \
                       .config/jetbrains-settings \
                      && dotfiles commit -v"
