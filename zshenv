# use atom as the visual editor
export VISUAL=atom
export EDITOR=$VISUAL

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/bin:$PATH"

# Add ~/.rbenv/bin to your $PATH for access to the rbenv command-line utility.
export PATH="$HOME/.rbenv/bin:$PATH"

# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init - zsh --no-rehash)"
fi

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"

# https://github.com/caskroom/homebrew-cask/blob/master/USAGE.md#options
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

export ZSHENV_PATH="$PATH"

# Setup for Go
# https://golang.org/doc/code.html#GOPATH
export GOPATH=$HOME/code/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bins
