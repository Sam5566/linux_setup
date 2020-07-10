# Net-tool
echo "	installing net-tool..."

sudo apt install net-tools

# SSH
echo "   installing SSH..."

sudo apt-get -y install ssh
netstat -a | grep ssh


# build-essential
echo "   installing coding environment for C and C++..."

sudo apt install -y build-essential
echo -----------------------------------
echo check installation is successful or not
gcc -v
g++ -v
make -v
echo FINISH installation of build-essential
echo -----------------------------------


# cmake
echo "    installing CMake..."

sudo apt install -y cmake
echo -----------------------------------
cmake -v
echo -----------------------------------

echo FINISH
echo -----------------------------------
echo -----------------------------------
echo -----------------------------------
