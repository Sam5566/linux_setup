echo "    installing VIM..."
sudo apt-get -y install vim
cp -r settingfiles/vim ~/.vim
cp settingfiles/vimrc ~/.vimrc

source ~/.zshrc
echo FINISH
