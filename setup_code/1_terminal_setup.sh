echo "    getting zsh..."
sudo apt-get -y install zsh

echo "    getting oh my zsh..."
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

echo "    getting powerline..."
sudo apt-get -y install powerline

mkdir ~/ohmyzsh/packages

echo "    getting powerlevel9k..."
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "    getting powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

echo "    getting autojump..."
git clone git://github.com/wting/autojump.git ~/ohmyzsh/custom/plugins/autojump
cd ~/ohmyzsh/custom/plugins/autojump
./install.py
cd ~/linux_setup

echo "    getting zsh-syntax-highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo "    getting zsh-autosuggestions..."
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

echo "    setting .zshrc..."
cp settingfiles/zshrc ~/.zshrc

source ~/.zshrc
echo FINISH
