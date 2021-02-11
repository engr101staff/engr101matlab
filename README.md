# ENGR 101 Runestone

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

For the local preview to work correctly, you'll also need to ensure `dynamic_pages` is set to `False` in `pavement.py`. However, make sure you set it back to `True` before the code is merged back into the main branch.

Remember that you will need to be in a terminal with your python virtual environment activated for those to work.

## Git Workflow for Contributing

Assuming you've already cloned the repository as above, open a terminal in the `engr101matlab` directory.

First, make sure you're starting from the `lobster-preview` branch and up-to-date with the version on github.

```console
git checkout lobster-preview
git pull origin lobster-preview
```

However, you should not change files directly on `lobster-preview` - instead, all new work should be done in a separate git branch. For example, let's say you want to start working on a new chapter. Create a new branch for the chapter:

```console
git checkout -b chapter3
```

That command creates a new branch, `chapter3` based on whatever branch you were on previously (`lobster-preview`) and switches you to that branch.

Now, go ahead and create new files, make changes, etc. You may also want to set `dynamic_pages` to `False` in `pavement.py`. (See the Content Creation section in this readme for details on where you should make changes to add content.) As you're working, you can always run `git status` to see a summary of the files you've added or edited.

Once you've made some changes and you want to "save" them, you should push them to your branch on github (make sure you've saved your files locally, first, of course). The first time you push for a new branch, you should run:

```
git add -A
git commit -m "Some message describing the work you did"
git push -u origin chapter3
```

Of course, adjust the branch name (e.g. `chapter3`) and the message in quotes accordingly.

For subsequent pushes on the same branch, you should omit the `-u` in the `git push` command.

When you have completed your work on your branch, make a pull request on github to merge the content into the `lobster-preview` branch. Assuming the merge is successful, you can safely delete your branch, but do NOT delete the `lobster-preview` branch. 

## Git Workflow for Publishing the "Live" Runestone

The live Runestone website is built off of the `master` branch. To update the `master` branch, first create a branch off of the `lobster-preview` branch. If your "live" version will not include all of the chapters in the `lobster-preview` branch, make the following edits to your branch: 

* In `_sources/index.rst` > "Table of Contents", delete any table of contents files (those are the `.../toctree.rst` files) for chapters that you are not including in this build.
* In `_sources/list_of_topics/toctree.rst`, delete any table of contents files for chapters that you are not including in this build.


When you commit these changes, leave a comment that is something like "set to build Chapters 1-## only" where ## is the number of the chapter you built through. Rebuild Runestone and use your local view to make sure that the website contains only the chapters you want and that nothing is broken. If you have been working with a version of Runestone that has more chapters than you are publishing live, you may need to remove the `build` directory prior to rebuilding, and you may need to clear your cache to check that everything is correct. 

Note: If you are not including all of the available chapters, you will likely get a bunch of warnings saying that "document isn't included in any toctree" -- that's okay since you don't want to include those chapters right now anyways.

When you are ready to push your updates to what will be the live version of Runestone, make sure that `dynamic_pages` is set back to `True` in `pavement.py`. (If you forget to change `dynamic_pages`, don't worry -- there's a check on the pull requests and it will fail if you forget.) Then, make a pull request to merge your branch into the `master` branch (NOT `lobster-preview`!). Assuming the merge is successful, you can safely delete your branch. 

## Runestone, reStructuredText, Sphinx, etc.

Runestone content is written in a markup language called reStructuredText (reST). It builds on top of Sphinx and DocUtils, which are tools for turning reST into formatted documentation, in our case, generating the HTML that supports the basic "pages" of our "book".

Don't worry too much about the details of the toolchain, but it's helpful to know their names when searching for documentation online (e.g. "runestone image directive" is probably less helpful to search than "sphinx image directive" - though both are more useful than "sphinx image" :D).

