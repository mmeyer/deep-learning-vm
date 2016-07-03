#!/bin/bash

################################################
# Provisions the Deep Learning Virtual Machine 
# 
# Credits :
# http://ermaker.github.io/blog/2015/09/08/get-started-with-keras-for-beginners.html
# https://github.com/ericwooley/apt-fast-vagrant-install (for apt-fast)
# https://gist.github.com/malev/2d2d76b1662e13acbbca (for miniconda)
# https://gist.github.com/davemkirk/90140b1edde8d18c8b83 (for IPython notebooks)
################################################

function mssg {
    now=$(date +"%T")
    echo "[$now] $1"
    shift
}

mssg "Provisioning the Deep Learning Virtual Machine ..."

mssg "Updating the package index files. Usually takes ~ 6 minutes, depending on the speed of your network ..."
apt-get -y update >/dev/null 2>&1

################################################
# apt-fast
mssg "Installing apt-fast to try speed things up ..."
apt-get install -y aria2 --no-install-recommends >/dev/null 2>&1
wget https://raw.githubusercontent.com/ilikenwf/apt-fast/master/apt-fast >/dev/null 2>&1
wget https://raw.githubusercontent.com/ilikenwf/apt-fast/master/apt-fast.conf >/dev/null 2>&1
cp apt-fast /usr/bin/
chmod +x /usr/bin/apt-fast
cp apt-fast.conf /etc

mssg "Installing pip ..."
apt-fast -y install python-pip >/dev/null 2>&1

################################################
# Miniconda
mssg "Downloading & Installing Miniconda ..."
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh >/dev/null 2>&1
chmod +x miniconda.sh
./miniconda.sh -b -p /home/vagrant/miniconda
echo 'export PATH="/home/vagrant/miniconda/bin:$PATH"' >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc
chown -R vagrant:vagrant /home/vagrant/miniconda
/home/vagrant/miniconda/bin/conda install conda-build anaconda-client anaconda-build -y -q

################################################
# Theano, H5py, Keras
mssg "Installing Theano dependencies"
apt-fast install -y python-numpy python-scipy python-dev python-pip python-nose >/dev/null 2>&1
apt-fast install -y g++ git libatlas3gf-base libatlas-dev >/dev/null 2>&1
mssg "Installing Theano"
/home/vagrant/miniconda/bin/conda install -y theano >/dev/null 2>&1
mssg "Installing H5py"
apt-fast install -y libhdf5-dev >/dev/null 2>&1
/home/vagrant/miniconda/bin/pip install "h5py==2.6.0" >/dev/null 2>&1
mssg "Installing Keras"
/home/vagrant/miniconda/bin/pip install "keras==1.0.5" >/dev/null 2>&1
#mssg "Making sure we are using the most up-to-date versions of Theano and Keras"
#/home/vagrant/miniconda/bin/pip install git+git://github.com/Theano/Theano.git --upgrade --no-deps
#/home/vagrant/miniconda/bin/pip install git+git://github.com/fchollet/keras.git --upgrade --no-deps

################################################
mssg "Installing IPython Notebook server"
mkdir -p /home/vagrant/notebooks
chown -R vagrant:vagrant /home/vagrant/notebooks
/home/vagrant/miniconda/bin/pip install ipython[notebook]

################################################
mssg "Downloading a few datasets to get started with some of the IPython Notebooks"
mkdir -p /home/vagrant/datasets/uci
wget http://archive.ics.uci.edu/ml/machine-learning-databases/pima-indians-diabetes/pima-indians-diabetes.data -O /home/vagrant/datasets/uci/pima-indians-diabetes.csv
chown vagrant:vagrant /home/vagrant/datasets -R

mssg "Done!"

