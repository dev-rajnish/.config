USR_BIN_DIR="/usr/local/bin"

echo 'started'

sudo cp -rv ~/.config/ba-sh/git/ $USR_BIN_DIR

sudo ln -sv $USR_BIN_DIR/git/* $USR_BIN_DIR
