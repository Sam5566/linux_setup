echo "installing Dropbox..."
cd ~/Downloads
echo "Please copy the location of the deb file from Dropbox installation page"
firefox https://www.dropbox.com/zh_TW/install
read dropbox_location
wget "$dropbox_location"
sudo dpkg -i dropbox*.deb
cd ~/linux_setup
