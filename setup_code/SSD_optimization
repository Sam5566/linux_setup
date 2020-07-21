echo "    checking the device in this computer:"
sudo fdisk -lu
echo "    Starting to optimize the SSD configuration..."
echo "    ＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊"
echo "    Opening /etc/fstab..."
echo "    In order to close the time record in SSD when writing,"
echo "    please add "noatime" in front of the "defualt" in the description term manually"
echo "    ＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊"
sudo gedit /etc/fstab

echo "    Mounting the /tmp/ on the RAM to lower the usage of SSD..."
sudo cp /usr/share/systemd/tmp.mount /etc/systemd/system/ && sudo systemctl enable tmp.mount
