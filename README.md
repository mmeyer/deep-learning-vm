Deep Learning Virtual Machine
================================
Sets up a VirtualBox VM with [Keras](https://keras.io/), [TensorFlow](https://www.tensorflow.org/) and [Theano](http://deeplearning.net/software/theano/) installed.
A [Vagrant](https://www.vagrantup.com/) file is used to set up this VM, which runs on Ubuntu 14.04.

### Getting Started
I assume you already have VirtualBox (version 5+) installed,
if you don't, please [download](https://www.virtualbox.org/wiki/Downloads) and install it.

1. [Download and install Vagrant](http://www.vagrantup.com/downloads.html) if you haven't previously done so.
2. Change into the `deep-learning-vm` directory and run `vagrant up` - this creates the VM.

### What's Installed

- Deep Learning,
  - Keras, 2.0.6
  - TensorFlow, 1.3.0
- Python, 3.5.2
  - numpy, 1.11.1
  - pandas, 0.18.1
  - scipy, 0.18.1

In addition, a Jupyter notebook server is also installed. You can view it from the host's browser at http://localhost:8100. Password : password
