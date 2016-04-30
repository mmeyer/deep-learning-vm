Deep Learning Virtual Machine
================================
A [Vagrant](https://www.vagrantup.com/) file to set up a VirtualBox VM with [Keras](https://keras.io/) and [Theano](http://deeplearning.net/software/theano/) installed.
The VM runs on Ubuntu 14.04.

# Getting Started

I assume you already have [VirtualBox](https://www.virtualbox.org/wiki/Downloads) installed, 
if you don't, follow the link to download and install it.

1. [Download and install Vagrant](http://www.vagrantup.com/downloads.html) if you haven't previously done so.
2. Change into the `deep-learning-vm` directory and run `vagrant up` - this creates the VM.

This should install 
- H5py, 2.6.0
- Keras, 1.0.6
- Python, 3.5.2
- Theano, 0.9.0.dev2
- scipy, 0.17.1

## Testing Keras
```bash
$ vagrant ssh
$ curl -sSL https://raw.githubusercontent.com/fchollet/keras/master/examples/mnist_mlp.py | python
```
The script above, `mnist_mlp.py`, trains a simple deep neural network on the MNIST dataset. 
If all goes well, you should see a test accuracy close to 98.40% after 20 epochs.

