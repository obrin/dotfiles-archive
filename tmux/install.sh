TMUX_DIR=$HOME/.tmux
PLUGINS_DIR=$TMUX_DIR/plugins

if [ ! -d $PLUGINS_DIR ]; then
  sh -c "$(mkdir -p $PLUGINS_DIR)"
fi

if [ ! -d $PLUGINS_DIR/tpm ]; then
  sh -c "$(git clone https://github.com/tmux-plugins/tpm $PLUGINS_DIR/tpm)"
fi