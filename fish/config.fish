if status is-interactive
# Commands to run in interactive sessions can go here
## START
set fish_greeting
##--ALIAS- START
#
alias s="sudo"
alias install="sudo zypper in"
alias in="sudo zypper in"
alias zypper="sudo zypper"
alias z="sudo zypper"
alias ls='exa --icons -1'
alias la='exa -a --icons -1'
alias ll='exa -lah --icons'
alias vi='nvim'
alias vim='nvim'
alias nano='nvim'
alias addAlias="nvim .config/fish/config.fish"
alias bashrc="nvim .config/fish/config.fish"
alias myip="echo \nipv4 is :\t$(curl -s https://api.ipify.org)\n"
#
##--ALIAS  END 
##--LS DIR COLOR CHANGE 
export LS_COLORS="di=33:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30"

end
