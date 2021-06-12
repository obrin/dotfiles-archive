export ZSH=$HOME/.oh-my-zsh

if [ ! -d $ZSH ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

export PLUGINS_DIR=$HOME/.oh-my-zsh/custom/plugins

ZSH_Z=$PLUGINS_DIR/zsh-z

if [ ! -d $ZSH_Z ]; then 
  sh -c "$(git clone https://github.com/agkozak/zsh-z $ZSH_Z)"
fi
