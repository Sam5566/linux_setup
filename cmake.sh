#please run this file at $HOME/linux_setup

DIR='setup_code/'
if [ $? != 0 ]; then
    echo please go to HOME/linux_setup
    exit 0
fi

for FILE in "$DIR"/*.sh
do
    echo Set up $FILE
    source $FILE
    echo
done
