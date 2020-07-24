echo "    Create Directory: HEP_tools in ~/"
mkdir ~/HEP_tools
mkdir ~/HEP_tools/zshconfig

# root
echo "    Getting root..."

cd ~/Downloads

echo "which version of Ubuntu do you have? 18 or 20"
read ans
if [ $ans -eq 18 ];
then
    wget -c https://root.cern/download/root_v6.20.04.Linux-ubuntu18-x86_64-gcc7.5.tar.gz -O - | tar -xz -C ~/HEP_tools
elif [ $ans -eq 20 ];
then
    wget -c https://root.cern/download/root_v6.22.00.Linux-ubuntu20-x86_64-gcc9.3.tar.gz -O - | tar -xz -C ~/HEP_tools
else
    echo "the version of your Linux can not in the library, please search the root installation file location @ https://ph-root-2.cern.ch/ and paste to here:"
    read location
    wget -c $location -O - | tar -xz -C ~/HEP_tools
fi
cd ~/linux_setup
##Reminder: if want the newest version of root, please go to "https://root.cern.ch/downloading-root"

cp settingfiles/root_hist_common_setting.h ~/HEP_tools/root/include/
source ~/.zshrc
## check Root
echo ----------------------------
echo try to open root...
start_root
root -q
echo ----------------------------


# MadGraph
echo "   installing MadGraph..."

cd ~/Downloads

wget -c https://launchpad.net/mg5amcnlo/2.0/2.7.x/+download/MG5_aMC_v2.7.3.tar.gz -O - | tar -xz -C ~/HEP_tools

mv "$(find ~/HEP_tools -name "MG5_aMC*" -type d)" ~/HEP_tools/MG5_aMC

cd ~/linux_setup
cp settingfiles/start_madgraph.sh ~/HEP_tools/zshconfig/
source ~/.zshrc
## check MadGraph
echo ---------------------------------------------------------------------
echo "    Change MadGraph directory from MG5_aMC_vx_x_x to MG5_aMC"
echo "    The version of MadGraph can be found in the file in the Dir."
echo "******************************************************"
echo -e "\033[31m You need to check Madgraph installation in other terminal\033[0m"
echo -e "\033[31m please check it by yourshelf.\033[0m"
echo "******************************************************"

# GMCalc

# HEPfit
echo "Installing HEPfit..."
echo "***Warning: please make sure that you have already install GSL, ROOT, BOOST and MPI, or you will not be able to do cmake in following installation"
echo "Opening the download page for Hepfit..."
firefox https://hepfit.roma1.infn.it/
echo "Please enter the website for downloading the lastet Hepfit *tar.gz* file in this website"
read hepfit_url
wget -c $hepfit_url -O | tar -xz -C ~/HEP_tools/
mv "$(find ~/HEP_tools -name "HEPfit*" -type d)" ~/HEP_tools/HEPfit
mkdir ~/HEP_tools/HEPfit/build
cd ~/HEP_tools/HEPfit/build
cmake .. -DLOCAL_INSTALL_ALL=ON -DMPIBAT=ON -DMPI_CXX_COMPILER=/usr/local/lib/bin/mpicxx
make
make install

## check hepfit
echo ---------------------------------------------------------------------
echo "    Change HEPfit directory from HEPfit-x.x to HEPfit"
echo "    The version of HEPfit can be found in the file in the Dir."
echo "******************************************************"
echo "    check Monte Carlo mode is able to run..."
cd example/MonteCarloMode/
cp ~/linux_setup/settingfiles/Makefile_of_HEPfit Makefile
make
echo "***Warning: please make sure that the root is able to open"
echo "How many cores in your CPU?"
read Ncore
mpiexec -n $Ncore ./analysis ../config/StandardModel.conf MonteCarlo.conf
echo ---------------------------------------------------------------------

echo FINISH
