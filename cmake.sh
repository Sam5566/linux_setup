#please run this file at $HOME/linux_setup

DIR='setup_code/'
for FILE in "$DIR"/*.sh
do
    echo Set up $FILE
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
