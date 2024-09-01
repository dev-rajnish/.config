function alias_fish

#------------------
# sys basic
alias in='$HOME/my/bash-exec/install-with-logging.sh'
alias un='$HOME/my/bash-exec/uninstall-with-logging.sh'

alias my="cd $HOME/my"
alias cpwd='echo -----------------------------;echo at : $PWD;echo -----------------------------'
alias batc='bat --theme "Monokai Extended" --paging never --style=grid,header'
alias ok='clear'
alias ls='eza --icons -1 -a ; cpwd'
alias l='eza --icons -1 -a  ; cpwd'
alias ll='eza -lah --icons ; cpwd'
alias rm='rm -i'

alias add-alias='vim ~/.config/fish/functions/alias_fish.fish'
alias fishrc='vim ~/.config/fish/config.fish'

alias cl='clear; ls -a' 
alias clearx='clear -x'

alias live='live-server --port=8090 --wait=1 & sleep 1 && ngrok start --all'
alias fish-greet='sudo vim /usr/share/fish/functions/fish_greeting.fish'

alias yt='firefox --new-window https://youtube.com'
alias plain='firefox --new-window https://192.168.154.66:8443/'

#---------------------
end
