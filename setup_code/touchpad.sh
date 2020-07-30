sudo gpasswd -a $USER input
sudo apt-get install libinput-tools
sudo apt-get install ruby
sudo gem install fusuma
sudo apt-get install xdotool
gsettings set org.gnome.desktop.peripherals.touchpad send-events enabled

##fusuma

mkdir -p ~/.config/fusuma
cp settingfiles/config/fusuma/config.yml ~/.config/fusuma/config.yml
