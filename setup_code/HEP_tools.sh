echo "    Create Directory: HEP_tools in ~/"
mkdir ~/HEP_tools


# root
echo "    Getting root..."

cd ~/Download

wget -c https://root.cern/download/root_v6.20.04.Linux-ubuntu18-x86_64-gcc7.5.tar.gz -O - | tar -xz -C ~/HEP_tools

cd ~/linux_setup
##Reminder: if want the newest version of root, please go to "https://root.cern.ch/downloading-root"
cp settingfiles/start_root.sh ~/
cp settingfiles/root_hist_common_setting.h ~/HEP_tools/root/include/

# check executable
echo ----------------------------
echo try to open root
start_root
root -q
echo ----------------------------


# MadGraph
cd ~/Download

wget -c https://launchpad.net/mg5amcnlo/2.0/2.7.x/+download/MG5_aMC_v2.7.3.tar.gz -O - | tar -xz -C ~/HEP_tools

# GMCalc

# HEPfit


echo FINISH
echo ----------------------------------
echo ----------------------------------
echo ----------------------------------
