# use atom as the visual editor
export VISUAL=atom
export EDITOR=$VISUAL

# ensure dotfiles bin directory is loaded first
export PATH="$HOME/.bin:/usr/local/bin:$PATH"

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
