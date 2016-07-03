Deep Learning Virtual Machine
================================
Sets up a VirtualBox VM with [Keras](https://keras.io/) 
and [Theano](http://deeplearning.net/software/theano/) installed.
A [Vagrant](https://www.vagrantup.com/) file is used to set up this VM, which runs on Ubuntu 14.04.

### Getting Started
I assume you already have VirtualBox (version 5+) installed,
if you don't, please [download](https://www.virtualbox.org/wiki/Downloads) and install it.

1. [Download and install Vagrant](http://www.vagrantup.com/downloads.html) if you haven't previously done so.
2. Change into the `deep-learning-vm` directory and run `vagrant up` - this creates the VM.

### What's Installed
The following Python packages are installed.

- H5py, 2.6.0
- Keras, 1.0.5
- Python, 3.5.2
- Theano, 0.9.0.dev2
- scipy, 0.17.1

In addition, an Ipython server is also installed. You can view it from the host's browser at http://localhost:8100.

### Testing Keras
This VM comes with a few notebooks (with required datasets).

If you'd prefer the obligatory *handwritten digits* example,
```bash
$ vagrant ssh
$ curl -sSL https://raw.githubusercontent.com/fchollet/keras/master/examples/mnist_mlp.py | python
```
The script above, `mnist_mlp.py`, trains a simple deep neural network on the MNIST dataset. 
If all goes well, you should see a test accuracy close to 98.40% after 20 epochs.

