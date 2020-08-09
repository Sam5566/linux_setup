#please run this file at $HOME/linux_setup

DIR='setup_code'
if [ -r "setup_code/1_terminal_setup.sh" -a -r "setup_code/anaconda_setup.sh" ]; then
    echo "reboot at anaconda and the end of the installation"
    choice=1
elif [ -r "setup_code/1_terminal_setup.sh" ]; then
    echo "reboot at terminal and the end of the installation"
    choice=2
elif [ -r "setup_code/anaconda_setup.sh" ]; then
    echo "reboot at anaconda and the end of the installation"
    choice=3
else
    echo "reboot at the end of the installation"
    choice=4
fi
echo "please push enter"
read

for FILE in "$DIR"/*.sh
do
    echo -e "\033[34m Set up $FILE\033[0m"
    source $FILE

    if [ "$FILE" = "setup_code/anaconda_setup.sh" -a $choice -eq 1 ]; then
        mv setup_code/anaconda_setup.sh setup_code/anaconda_finish
        sudo reboot now
    elif [ "$FILE" = "setup_code/1_terminal_setup.sh" -a $choice -eq 2 ]; then
        sudo reboot now
    elif [ "$FILE" = "setup_code/anaconda_setup.sh" -a $choice -eq 3 ]; then
        mv setup_code/anaconda_setup.sh setup_code/anaconda_finish
        echo "rebooting...[ENTER]"
        read
        sudo reboot now
    fi

    echo ---------------------------------
    echo ---------------------------------
    echo ---------------------------------
done

sudo reboot now
echo +++++++++++++++++++++++++++++++++++++
echo +++++++++++++++++++++++++++++++++++++
echo +++++++++++++++++++++++++++++++++++++
./check.sh
