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
git clone https://github.com/Sam5566/linux_setup.git
```
#### select the app or setup you want to use
see [Selection](https://github.com/Sam5566/linux_setup#selection)

#### run the shell file
```bash
source cmake.sh
```
#### failure
If there is a code that does not run successfully, it will generate **setup_logs.txt** to print the error messages.

#### check
run `check.sh` to find out those unsucessful setup after restart your computer.

## Selection
There are many flie in folder **setup_code** and **settingfiles**, they are

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
* python2: installation of the Python 3 (to-updated) and the packages of
	* Numpy
	* Matplotlib
	* SciPy
* anaconda: installation of Anaconda and Python 3 (to-updated) and the packages of
	* Numpy
	* Matplotlib
	* SciPy
	* keras
	* tensorflow
* C: installation of compiler
	* gcc
* C++: installation of compiler
	* gcc
* mathematica: Installation (need to be verified with code)
* root: Installation and presetting
	* my own **.rootrc**
	* my own plotting header's file or code
* system

* application(app)
