function alias_fish

    #------------------
    # sys basic
    alias in="$HOME/my/bash-exec/zypper-log/install-with-logging"
    alias un="$HOME/my/bash-exec/zypper-log/uninstall-with-logging"
    ## -- git
    alias github="f2g"
    alias github_all="f2g ."
    alias gits="git status"
    alias gita="git add ."

    alias my="cd $HOME/my"
    alias batc="bat --theme='Monokai Extended' --paging never --style=grid,header"
    alias ok="clear"
    alias ls="eza --icons -1 -a"
    alias l="eza --icons -1 -a"
    alias ll="eza -lah --icons"
    alias rm="rm -i"

    alias add_alias="vi ~/.config/fish/functions/alias_fish.fish"
    alias fishrc="vi ~/.config/fish/config.fish"

    alias cl="clear; ls -a"
    alias clearx="clear -x"

    alias fish_greet="sudo vim /usr/share/fish/functions/fish_greeting.fish"
    alias pkg_list="glow ~/my/bash-exec/zypper-log/pkg-list.txt"
    #---------------------
    alias y="yazi"
    alias pipe='/home/e2b/my/pipe.sh -p 4 -R -t1 -f 30'

end