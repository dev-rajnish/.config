if status is-interactive
    #------------------------
    
    init_fish
    ls_color

    #+======================
    source ~/.config/fish/source_file.fish

    alias_fish
    alias_web_app

    #--------------------------
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
