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
sudo apt-get install git
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
#### failure
If there is a code that does not run successfully, it will generate **setup_logs.txt** to print the error messages.

#### check
run `check.sh` to find out those unsucessful setup after restart your computer.

## Selection
There are many flie in folder **setup_code** and **settingfiles** and they are show below. If you do not want such app/setup just remove the file with the same name from those folder.

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
* C: installation of compiler (already include in the OS initially)

* mathematica: Installation (need to be verified with code)
* root: Installation (version 6.20) and presetting
	* my own **.rootrc**
	* my own plotting header's file or code
* system
    * ssh
* application(app)
    * cmake
    
* library
    * boost
    * GSL
