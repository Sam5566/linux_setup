echo "    getting python and pip"
sudo apt-get install python
python -V

sudo apt-get install python-pip
pip install -U pip
pip -V

echo "    getting packages for python2"
python3 -m pip3 install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

echo "    getting python3 and pip3"
sudo apt-get install python3
python3 -V

sudo apt-get install python3-pip
pip3 install -U pip3
pip3 -V

echo "    getting packages for python3"
python3 -m pip3 install --user numpy scipy matplotlib ipython jupyter pandas sympy nose
