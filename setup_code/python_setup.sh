echo "    Installing python2"
sudo apt-get -y install python
python -V

echo "    Installing pip"
sudo apt-get -y install python-pip
pip install -U pip
pip -V

echo "    installing packages for python2"
python -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

echo "    installing python3"
sudo apt-get -y install python3
python3 -V

echo "    installing pip3"
sudo apt-get -y install python3-pip
pip3 -V

echo "    getting packages for python3"
python3 -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose


echo FINISH
echo --------------------------------------
echo --------------------------------------
echo --------------------------------------
