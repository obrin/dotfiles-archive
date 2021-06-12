NVM_PLUGIN=$HOME/.oh-my-zsh/custom/plugins/zsh-nvm

if [ ! -d $NVM_PLUGIN ]; then
  sh -c "$(git clone https://github.com/lukechilds/zsh-nvm $NVM_PLUGIN)"
fi