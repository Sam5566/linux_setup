# SSH
echo    installing SSH...

sudo apt-get install ssh
netstat -a | grep ssh


# build-essential
echo    installing coding environment for C and C++...

sudo apt install build-essentail
echo -----------------------------------
echo check installation is successful or not
gcc -v
g++ -v
make -v
echo FINISH installation of build-essentiol
echo -----------------------------------


# cmake
echo installing CMake...

sudo apt install cmake
echo -----------------------------------
cmake -v
echo -----------------------------------
