＃ time sycronization should be done if two systems are mounted in the same disk
echo "Is two system mounted in the same disk?[y/n]"
read sys_num
if [ ${sys_num} = y -o "${sys_num}" = "yes" ];
then
    echo "adjusting the time of Ubuntu..."
    sudo apt-get install ntpdate
    sudo ntpdate time.windows.com
    sudo hwclock --localtime --systohc
else
    echo "No need to adjust the time of Ubuntu..."
fi
