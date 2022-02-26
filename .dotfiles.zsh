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
                       .config/gtk-3.0 \
                       .config/i3 \
                       .config/jetbrains-settings \
                       .config/kitty \
                       .config/mpv \
                       .config/neofetch \
                       .config/nvim \
                       .config/picom \
                       .config/polybar \
                       .config/ranger \
                       .config/rofi \
                       .config/zathura \
                       .dotfiles.zsh \
                       .gitignore \
                       .p10k.zsh \
                       .zshrc \
                      && dotfiles commit -v"
