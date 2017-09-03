Installation instructions to run Huma tutorial in VM
====================================================

Before you can start with the [Huma tutorial](https://github.com/mmeyer/huma-tutorial) you first, need to install some software. For that, I provide with the easiest one which is based on a virtual machine imag. If you want a dedicated installation on your local machine, you need some knowledge how to install python software and packages on the operating system you prefer. In my Github of the [Huma tutorial](https://github.com/mmeyer/huma-tutorial) you find the instructions for that type of installation. But I would advice you to start with the VM option.

## Install VirtualBox
We use for that an Linux image that you run in VirtualBox on your machine, what is a free virtual machine host. You can download VirtualBox for your operating system [here](https://www.virtualbox.org/wiki/Downloads) and install it just by a double-click.  

## Install Vagrant
Once you installed VirtualBox, you need also to download Vagrant for you operating system, from [here](http://www.vagrantup.com/downloads.html), which will build the image base on the by me provided configuration.

## Clone Vagrant Configuation
The configuration you have to download from my GitHub account. For that you have just to run the following command in your terminal/shell (I assume you have installed git):

`git clone https://github.com/mmeyer/deep-learning-vm.git`

## Provision VM Image with Vagrant
Once the git repository is cloned you `cd` in the root directory `deep-learning-vm` of the downloaded repository and run the `vagrant up` command. That will now download the Ubuntu Linux image and provision it with all the software you need for the tutorial.

## Open jupyter web environment and start Huma tutorial
Now you can open in your browser the following url [http://localhost:8100/](http://localhost:8100/) to load the jupyter environment, where you can interactively run through the tutorial. If you are asked for a password to enter the jupyter web interface you just type `password` in the password input box and your logged in. You will see the jupyter file listing and by just double clicking the `huma_tutorial.ipynb` juypter notebook file the tutorial opens and you can interactively learn about how the AI in Huma works.

In the directory `deep-learning-vm` you find also a folder called `huma-tutorial` which is the cloned Huma tutorial on GitHub [here](https://github.com/mmeyer/huma-tutorial) that gets by the VM synced between the VM and your machine.

You need to check out this GitHub tutorial repository only if you want to install the software directly on your computer. For the VM installation option this happens already when your provision the VM Image.

## How to stop the VM
To stop the VM gracefully you just type `vagrant halt` in the shell, where you also executed before the `vagrant up` command.

## Option to directly install software for tutorial
To install all software directly on your machine you  can follow the instructions in the README.md of the [Huma tutorial git repository](https://github.com/mmeyer/huma-tutorial)
