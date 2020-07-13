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
or if you already have package **make**, try
```bash
cd linux_setup
make
```
#### check
If all you want in **setup_code** are installed or cloned sucessfully, the check part will start automatically to make sure again all of them can be called. As long as the installation is without problem, it shows "pass" in the terminal. No matter the installation is sucessful or not, all messages will go into **setup_logs.txt**.
This can be done in **linux setup** by
```bash
source check.sh
```

## Selection
There are many flie in folder **setup_code** and **settingfiles** and they are show below. If you do not want such app/setup just remove the file with the same name from those folder. If something you don't want is only a part of the file, just go into that setup file and comment the line. Each part of installation should be seperated and easy to reconized.

* terminal: to make the terminal more beautiful, more easy to look and help user execute the shell
	* zsh
	* oh my zsh
	* powerline
    * powerlevel9k
    * poewrlevel10k
	* autojump
	* syntex_highlight
    * zsh-autosuggestions
	* my own **.zshrc**
* vim: installation and to make the terminal more beautiful, more easy to look and help user type the code
	* my own **.vimrc**
* python2: installation of the Python 2 (to-updated) and the packages of
	* Numpy
	* Matplotlib
	* SciPy
    * ipython
    * jupyter
    * pandas
    * sympy
    * nose
* python3: installation of the Python 3 (to-updated) and the packages of
	* Numpy
	* Matplotlib
	* SciPy
    * ipython
    * jupyter
    * pandas
    * sympy
    * nose
* anaconda: installation of Anaconda and Python 3 (to-updated) and the packages of
	* Numpy
	* Matplotlib
	* SciPy
	* keras
	* tensorflow
* GCC: installation of compiler (already include in system_setup: build-essential, the shell script here is to only install GCC)

* mathematica: Installation (need to be verified with code)
* HEP_tools: High Energy Physics analysis packages
    * root: (version 6.20)
        * my own **.rootrc**
        * my own plotting header's file or code
    * MadGraph (version: MG5_aMC_v2_6_7)
    * GMCalc (version: 1.41)
    * HEPfit
* system
    * ssh
    * build-essential (including libc6-dev, libc-dev, gcc, g++, make, dpkg-dev)
    * cmake
* application(app)
    * datathief
    * Dropbox
    * Onedrive
    * Google Drive
* library
    * boost
    * GSL
