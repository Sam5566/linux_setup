#please run this file at $HOME/linux_setup

DIR='setup_code/'
for FILE in "$DIR"/*.sh
do
    echo -e "\033[34m Set up $FILE\033[0m"
    source $FILE
    echo
    echo ---------------------------------
    echo ---------------------------------
    echo ---------------------------------
done

echo +++++++++++++++++++++++++++++++++++++
echo +++++++++++++++++++++++++++++++++++++
echo +++++++++++++++++++++++++++++++++++++
./check.sh
