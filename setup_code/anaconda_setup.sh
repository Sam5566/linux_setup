# Anaconda 3
echo "    installing anaconda3..."
echo "    checking is there exist anaconda before by call its version..."
conda --version
if [ $? -ne 0 ]; then
    echo The anaconda is still not installed
    echo "start install..."
    cd ~/Downloads
    wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh

    bash Anaconda3-2020.02-Linux-x86_64.sh
    source ~/.zshrc

    cd ~/linux_setup
    echo Check the installation of Anaconda3
    conda list



# scipy

# tensorflow

else
    echo already install anaconda
fi

echo FINISH
