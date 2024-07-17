function alias_fish

#------------------
# sys basic
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

#---------------------
end
