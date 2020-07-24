####################################################################
####################################################################
# Warning: If you change the installation path, it may lead to some
# problem when you install, compile, or even run other C-related
# programs.
# Moreover, if the path change, please remember to change the path
# of the following installation file:
# HEP_tools.sh,
####################################################################
####################################################################
#[---------------Place to change location-------------------------]#
# unzip path [default: ~/library/]
unzip_path=~/library
mkdir $unzip_path
# Installation path [default: /usr/local/]
location=/usr/local/

echo "    Starting to install coding library..."
echo "the libraries will be unziped in $unzip_path, and installed in $location"

# install GSL
cd ~/Downloads/
echo "    Installing GSL in $location"
echo "Opening the download page for GSL..."
firefox ftp.twaren.net/Unix/GNU/gnu/gsl/
echo "Please enter the website for downloading the lastet GSL *tar.gz* file in this website"
read gsl_url
wget -c $gsl_url -O - | tar -xz -C $unzip_path
cd $unzip_path/gsl*
sudo ./configure --prefix=$location
sudo make
sudo make install

# install boost
cd ~/Downloads/
echo "    Installing boost in $location"
echo "Opening the download page for BOOST..."
firefox https://www.boost.org/
echo "Please enter the website for downloading the lastest BOOST *tar.gz* file in this website"
read boost_url
wget -c $boost_url -O - | tar -xz -C $unzip_path
cd $unzip_path/boost*
sudo ./configure --prefix=$location
sudo ./bootstrap.sh --prefix=$location
sudo ./b2 install


# install MPI
cd ~/Downloads/
echo "    Installing OpenMPI in $location"
echo "Opening the download page for OpenMPI..."
firefox https://www.open-mpi.org/
echo "Please enter the website for downloading the lastest OPENMPI *tar.gz* file in this website"
read mpi_url
wget -c $mpi_url -O - |tar -xz -C $unzip_path
cd $unzip_path/*mpi*
sudo ./configure --prefix=$location
sudo make all install
source ~/.zshrc
