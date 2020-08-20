# ENGR 101 Matlab Runestone

This repository contains the runestone "book" with ENGR 101 lectures and exercises.

## Getting started

First, you'll need to get your computer set up for general development. Following the C++ setup instructions that we give to ENGR 101 students should be mostly sufficient.

Make sure you have the following installed:
 - VS Code
 - python3
 - git

You'll also need pip3, a python package manager.
```console
sudo apt install python3-pip
```

### Creating a Python Virtual Environment for Runestone

Run the following at a terminal:

```console
sudo pip3 install virtualenv
virtualenv ~/RunestoneEnv
source ~/RunestoneEnv/bin/activate
```

After running the `source` line, your terminal prompt should change to show that your terminal is now operating in a python virtual environment. The stops when you close the terminal or if you type `deactivate` at the terminal.

You'll need to run the last `source` line every time you open a new terminal to reactivate the python virtual environment.

### Installing Runestone in the Virtual Environment

Now run the following in the same terminal (inside the virtual environment):

```console
pip3 install runestone
```

This will install runestone in your virtual environment. The install persists, so you don't need to do this again, even if you deactivate/activate the virtual environment again.

### Clone This Repository

This repository contains the source materials for the runestone book. If you have an engr101 directory, navigate your terminal there. To create a local copy of the repository on your device, run:

```console
git clone https://github.com/engr101staff/engr101matlab.git
```

You will probably be prompted for your credentials. Or if you have two factor authentication turned on for Github, you'll need to create a personal access token ([instructions here](https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token)) and enter that token instead of your password.

This will create a folder called `engr101matlab`. Inside the folder you'll find a folder called `_sources` that contains `.rst` files with the text content, encoded as reStructuredText.

### Building and Previewing the Book

If you make some changes to the `.rst` files and you'd like to build/preview the book, just run:

```console
runestone build
runestone serve
```

Remember that you will need to be in a terminal with your python virtual environment activated for those to work.


