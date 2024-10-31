alias add-alias 'echo -e "$argv[2]" \n >> ~/.config/fish/alias_list.fish'

alias fish_dir 'cd ~/.config/fish/'

alias tm 'tmux new -s pre 2>/dev/null ; tmux attach -t pre'

alias ftg-after-vim '~/my/bash-exec/dir-to-gh/d2g-after-vim'

alias n 'neo . && ftg-after-vim'

alias r 'ranger'
