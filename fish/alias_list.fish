alias add-alias 'echo -e "$argv[2]" >> ~/.config/fish/alias_list.fish'

alias fish_dir 'cd ~/.config/fish/'

alias tm 'tmux new -s pre 2>/dev/null ; tmux attach -t pre'

alias n 'neo . && gh-this-dir'

alias r ranger

alias xplr 'xplr --print-pwd-as-result'

alias f 'cd $(xplr --print-pwd-as-result)'

alias nvim 'nvim . &&  gh-this-dir'
 alias fe 'f && nvim'
