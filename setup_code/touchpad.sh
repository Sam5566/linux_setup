sudo gpasswd -a $USER input
sudo apt-get install -y libinput-tools
sudo apt-get install -y ruby
sudo gem install -y fusuma
sudo apt-get install -y xdotool
gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled

##fusuma

mkdir -p ~/.config/fusuma
cp settingfiles/config/fusuma/config.yml ~/.config/fusuma/config.yml
