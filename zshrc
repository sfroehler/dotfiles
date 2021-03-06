# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simon"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(osx asdf atom aws docker git gitignore github ruby rails rake cap bundler brew gem vagrant zsh-syntax-highlighting lol zeus postgres encode64)

source $ZSH/oh-my-zsh.sh

# awesome cd movements from zshkit
setopt autocd pushdsilent pushdtohome cdablevars
DIRSTACKSIZE=5
cdpath=($HOME/code)

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='atom'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

setopt auto_cd
cdpath=($HOME/code)

#awscli auto completion
source /usr/local/share/zsh/site-functions/_aws

# load aliases
source ~/.aliases.zsh

# load server_aliases
[[ -f ~/.server_aliases ]] && source ~/.server_aliases

# load private environment variables
[[ -f ~/.private_env_variables ]] && source ~/.private_env_variables

# added by travis gem
[ -f /Users/sfroehler/.travis/travis.sh ] && source /Users/sfroehler/.travis/travis.sh

# nvm setup
# export NVM_DIR=~/.nvm
# source $(brew --prefix nvm)/nvm.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add ~/.rbenv/bin to your $PATH for access to the rbenv command-line utility.
# export PATH="$HOME/.rbenv/bin:$PATH"


# load rbenv if available
# if which rbenv &>/dev/null ; then
#   eval "$(rbenv init - --no-rehash)"
# fi

export PATH="$HOME/.bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
