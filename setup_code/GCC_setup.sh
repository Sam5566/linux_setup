echo     check GCC was installed or not...
gcc --version
if [ $? -ne 0 ];
then
    echo GCC had not installed
    echo installing GCC from Git...
    git clone git://gcc.gnu.org/git/gcc.git ~/gcc
else
    echo already install GCC
fi
