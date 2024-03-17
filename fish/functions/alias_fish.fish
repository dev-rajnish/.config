function alias_fish
alias s='sudo'
alias zypper='sudo zypper'
alias szypp='sudo zypper'
#=======================================
# sys basic
alias cpwd='echo -----------------------------;echo at : $PWD;echo -----------------------------'
alias batc='bat --theme "Monokai Extended" --paging never --style=grid,header'
alias ok='clear'
alias ls='cpwd ; eza --icons -1 -a ; cpwd'
alias l='cpwd ; eza --icons -1 -a  ; cpwd'
alias ll='cpwd ; eza -lah --icons ; cpwd'
alias rm='rm -i'
alias batc='bat --theme "Monokai Extended" --paging never --style=grid,header'


alias vim='lvim'
alias nvim='lvim'
alias cx='/home/rajnish/data/codes/c/auto-run-sh/clang-17.sh'
alias lc='/home/rajnish/data/bash-script/l.sh'

alias add-alias='lvim ~/.config/fish/functions/alias_fish.fish'
alias fishrc='lvim ~/.config/fish/config.fish'

alias cd-c='z ~/data/codes/c/'
alias code-c='code ~/data/codes/c'
alias c-r='cd ~/data/codes/c/rough'
alias d='z ~/data'
alias zcode='z ~/data/codes/'
alias zc='z ~/data/codes/'

alias cl='clear; ls -a' 
alias clearx='clear -x'

alias live='live-server --port=8090 --wait=1 & sleep 1 && ngrok start --all'

end 
