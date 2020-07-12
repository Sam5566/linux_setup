echo "    Create Directory: HEP_tools in ~/"
mkdir ~/HEP_tools
mkdir ~/HEP_tools/zshconfig

# root
echo "    Getting root..."

cd ~/Downloads

wget -c https://root.cern/download/root_v6.20.04.Linux-ubuntu18-x86_64-gcc7.5.tar.gz -O - | tar -xz -C ~/HEP_tools

cd ~/linux_setup
##Reminder: if want the newest version of root, please go to "https://root.cern.ch/downloading-root"

cp settingfiles/root_hist_common_setting.h ~/HEP_tools/root/include/

# check Root
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

# check MadGraph
echo ---------------------------------------------------------------------
echo "    Change MadGraph directory from MG5_aMC_vx_x_x to MG5_aMC"
echo "	  The version of MadGraph can find in the file in the Dir."
echo ******************************************************
echo -e "\033[31m You need to check Madgraph installation in other terminal\033[0m"
echo -e "\033[31m please check it by yourshelf.\033[0m"
echo ******************************************************

# GMCalc

# HEPfit


echo FINISH
