echo "Installing Mathematica..."
cd ~/Downloads
echo "Please download it from the opened page,"
echo "As long as the shell script file is downloaded in ~/Downloads,"
echo "Press ENTER"
firefox "https://drive.google.com/u/1/uc?export=download&confirm=qApe&id=1Hhy8ejKFfPZ298CsFM4ZDWRqbOKra7LQ"
read c
sudo bash Mathematica*.sh
cd ~/linux_setup
echo "---------------------------------------------------------"
echo "NOTICE: Please break the Mathematica by following step"
break_folder="https://drive.google.com/file/d/13ofeBlISKGzn_9OQ75pnOS5xx7Y6x8YG/view"
echo "Please download folder from $break_folder in Windows,"
echo "and execute the related bat flie."
echo "You need to execute it when you are ask for the certification."
echo "There is a manual in the folder, too."
echo "---------------------------------------------------------"
