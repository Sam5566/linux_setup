echo Start setting up the Linux...

#part : terminal
echo Set up terminal...
source terminal_setup.sh
echo

#part : VIM
echo Set up vim...
source vim_setup.sh
echo

#part : python & python3
echo Set up python...
source python_setup
echo

#part : anaconda
echo Set up anaconda...
source anaconda_setup
echo

#part : C & C++
echo Set up C and C++...
source C_setup
echo

#part : mathematica
echo setup methmatica...
source mathematica_setup
echo

#part : root
echo Setup root...
source root_setup
echo

#part : system
echo Set up system...
source system_setup
echo

#part : application
echo Set up application...
source app_setup
echo
