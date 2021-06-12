export ZSH=$HOME/.oh-my-zsh

if [ ! -d $ZSH ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

CUSTOM_DIR=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}

# PLUGINS
PLUGINS_DIR=$CUSTOM_DIR/plugins

if [ ! -d $PLUGINS_DIR/zsh-z ]; then 
  sh -c "$(git clone https://github.com/agkozak/zsh-z $PLUGINS_DIR/zsh-z)"
fi

if [ ! -d $PLUGINS_DIR/zsh-syntax-highlighting ]; then 
  sh -c "$(git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $PLUGINS_DIR/zsh-syntax-highlighting)"
fi

# THEMES
THEMES_DIR=$CUSTOM_DIR/themes

if [ ! -d $THEMES_DIR/powerlevel10k ]; then 
  sh -c "$(git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $THEMES_DIR/powerlevel10k)"
fi
