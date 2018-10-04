# Dotfiles

These are config files to set up a system the way I like it.

I am using [Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh).

I am running on Mac OS X and have not tested this on linux.


## Installation

Uses [rcm](https://github.com/thoughtbot/rcm) to link the dotfiles.

```terminal
git clone git://github.com/sfroehler/dotfiles ~/.dotfiles
cd ~/.dotfiles
brew bundle
cd ~
rcup -v -d .dotfiles .private-dotfiles
```
