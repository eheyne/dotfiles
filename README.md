# My Dotfiles Setup

## How to setup on a new machine

### Prerequisites

* Git (1.7+)
* Vim (7.3+) - MacVim installed via [Homebrew](http://mxcl.github.com/homebrew/)

### The Setup

#### Create the dotfiles directory in your ~ (users folder)

```bash
$ cd ~
$ git clone git@github.com:eheyne/dotfiles.git ~/dotfiles
$ cd ~/dotfiles
```

#### Register and clone the Vim bundles

```bash
# Register the submodules
$ git submodule init
# Clone the submodules
$ git submodule update
```

#### Add new submodules

```bash
# Add the submodule
$ git submodule add git://example.com/remote/path/to/repo.git vim/bundle/one-submodule
# Stage the changes
$ git add vim/bundle/one-submodule
# Commit the changes
$ git commit -m "Add a new submodule: one-submodule"
```

#### Symlink the new files to HOME

```bash
ln -s ~/dotfiles/.bashrc .bashrc
ln -s ~/dotfiles/.bash_profile .bash_profile
ln -s ~/dotfiles/.gitignore_global .gitignore_global
ln -s ~/dotfiles/.vim .vim
ln -s ~/dotfiles/.vimrc .vimrc
```

#### Update all submodules at once

```bash
# Navigate to your dotfiles directory
$ cd ~/dotfiles
# Run this one line in bash
$ git submodule foreach git pull origin master
```

## Acknowledgements

I have a few people to thank for help and inspiration in getting this up and running:

* [Brad Dielman](https://github.com/bdielman)
