function alias_fish

#------------------
# sys basic
alias in="$HOME/my/bash-exec/zypper-log/install-with-logging"
alias un="$HOME/my/bash-exec/zypper-log/uninstall-with-logging"
## -- git
alias github="f2g"
alias githuba="f2g ."
alias gits="git status"
alias gita="git add ."

alias my="cd $HOME/my"
alias cpwd="echo -----------------------------;echo At : $PWD;echo ----------------------------"
alias batc="bat --theme='Monokai Extended' --paging never --style=grid,header"
alias ok="clear"
alias ls="eza --icons -1 -a ; cpwd"
alias l="eza --icons -1 -a  ; cpwd"
alias ll="eza -lah --icons ; cpwd"
alias rm="rm -i"

alias add_alias="vim ~/.config/fish/functions/alias_fish.fish"
alias fishrc="vim ~/.config/fish/config.fish"

alias cl="clear; ls -a"
alias clearx="clear -x"

alias fish_greet="sudo vim /usr/share/fish/functions/fish_greeting.fish"
#---------------------
end
