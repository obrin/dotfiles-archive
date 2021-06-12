export DROPBOX=$HOME/.dropbox-dist/dropboxd

if [ ! -d $DROPBOX ]; then
  sh -c "$(cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -)"
fi
