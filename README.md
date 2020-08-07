# linux_setup
setting the Linux with various files and application used in physics or giving banefit to user such as python, zsh, vim...

## Installation
just run the following command in the command lines:

#### clone the file online
Update your `apt`
```bash
sudo apt-get update
```
Download git first
```bash
sudo apt-get -y install git
```
Clone the files here
```bash
cd ~/
git clone https://github.com/Sam5566/linux_setup.git
```
#### select the app or setup you want to use
see [Selection](https://github.com/Sam5566/linux_setup#selection)

#### run the shell file
```bash
cd linux_setup
source cmake.sh
```
we have already embed essential rebooting in the program, so if you do not see the message
```bash
Finish all installation--> final reboot[ENTER]
```
,then execute following lines
```bash
cd linux_setup
make
```
to get all packages installed.

#### check (still not do yet)
If all you want in **setup_code** are installed or cloned sucessfully, the check part will start automatically to make sure again all of them can be called. As long as the installation is without problem, it shows "pass" in the terminal. No matter the installation is sucessful or not, all messages will go into **setup_logs.txt**.
This can be done in **linux setup** by
```bash
source check.sh
```

## Selection
There are many flie in folder **setup_code** and **settingfiles** and they are show below in [setupcode](https://github.com/Sam5566/linux_setup#setup code). If you do not want such app/setup just remove the file with the same name from those folder. If something you don't want is only a part of the file, just go into that setup file and comment the line. Each part of installation should be seperated and easy to reconized.
#### warning
Due to the convention, some rules need to be follow, otherwise, you will face some problems and need to fix by yourself.
1. All the setting are set under zsh, so if you don't want to use ZSH as your terminal, you need to copy some lines in **.zshrc** to your own **.bashrc**.
2. If you take ZSH, but do not take every installation in this package, use source
```
source ~/.zshrc
```
to check whether there are some setting not use but exists in **.zshrc**.

3. python installation are mainly for those who use more python 2. If you just need to use python regardless the version, take anaconda only would be better.

#### setup code
* terminal: to make the terminal more beautiful, more easy to look and help user execute the shell
	* zsh
	* oh my zsh
	* powerline
    * powerlevel9k
    * poewrlevel10k
	* autojump ( need python to install, so you need to use run terminal installation at least twice)
	* syntex_highlight
    * zsh-autosuggestions
	* my own **.zshrc**
* vim: installation and to make the terminal more beautiful, more easy to look and help user type the code
	* my own **.vimrc**
* python: installation of Python2 and Python3 (to-date) and their packages
    * python (version 2.7)
    * python3 (version 3.7)
    * Numpy
    * Matplotlib
    * SciPy
    * ipython
    * jupyter
    * pandas
    * sympy
    * nose
* anaconda: installation of Anaconda and Python 3 (to-date) and the packages of
	* Numpy
	* Matplotlib
	* SciPy
	* keras
	* tensorflow
* C_compiler: installation of compiler (auto detect to avoid install again)

* mathematica: Installation (still not do yet)
* HEP_tools: High Energy Physics analysis packages
    * root: (version 6.20)
        * my own **.rootrc**
        * my own plotting header's file or code
    * MadGraph (version: MG5_aMC_v2_6_7)
    * GMCalc (version: 1.41)
    * HEPfit (version: 1.0)
        * correct Makefile for **MonteCarloMode/**
* fortran
    * gfortran
* system
    * ssh
    * build-essential (including libc6-dev, libc-dev, gcc, g++, make, dpkg-dev)
    * cmake
* application (still not do yet)
    * datathief
    * Dropbox
    * Onedrive
    * Google Drive (can be set in account in the setting of Ubuntu)
* C_library (default unzip in /home/user/library and install in /usr/local. you can change the pathes in the installation file)
    * boost
    * GSL
    * MPI
* dual_system (will let you confirm during installation)
    * time syncronized problem
* SSD_optimization
    * turn off time-recording
    * mount /tmp/ on RAM
* touchpad
    * fusuma
    * my own **config.yml**

# Copyright
This package is use to install some useful packages and apps and not for sell. Just in case, here I still mention their coming
