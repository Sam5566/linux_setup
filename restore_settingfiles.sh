# This script copy those settingfiles in local computer and also shown in dir. settingfiles to dir. settingfiles/

# zsh
cp ~/.zshrc settingfiles/zshrc

# vim
cp -r ~/.vim settingfiles/
mv settingfiles/.vim settingfiles/vim
cp ~/.vimrc settingfiles/vimrc

# root
#cp

# madgraph
cp ~/HEP_tools/zshconfig/start_madgraph.sh settingfiles/

# hepfit
cp ~/HEP_tools/HEPfit/build/examples/MonteCarloMode/Makefile Makefile_of_HEPfit

# fusuma
cp ~/.config/fusuma/config.yml settingfiles/config/fusuma/config.yml
