# git
alias gup='git smart-pull'
compdef _git gup=git-smart-pull
alias gl="git log --graph --pretty=format':%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"
compdef _git gl=git-log
alias glol='git log --pretty=oneline --abbrev-commit --graph --decorate'
compdef _git glol=git-log
alias unstage='git reset HEAD'
compdef _git unstage=git-reset
alias staged='git diff --cached'
compdef _git staged=git-diff
alias unstaged='git diff'
compdef _git unstaged=git-diff
alias track='git checkout -t'
compdef _git track=git-checkout
alias gap='git add -p'
compdef _git gap=git-add
alias gc='git commit -v'
compdef _git gc=git-commit
alias grh='git reset --hard'
compdef _git grh=git-reset
alias grhh='git reset HEAD --hard'
compdef _git grhh=git-reset
alias s='git status --short'
compdef _git s=git-status
alias grl='git reflog'
compdef _git grl='git-reflog'
alias gm='git smart-merge'
compdef _git gm='git-smart-merge'
alias glp='git log --patch'
compdef _git glp='git-log'
alias gls='git log --stat'
compdef _git gls='git-log'
alias grm='git rebase master'
compdef _git grm='git-rebase'
alias gr='git rebase'
compdef _git gr='git-rebase'

alias pgs='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgs_start='pgs'
alias pgs_stop='pg_ctl -D /usr/local/var/postgres -m fast stop'

alias zshconfig="atom ~/.zshrc"
alias ohmyzsh="atom ~/.oh-my-zsh"

# Unix
alias tlf="tail -f"
alias dog="tail -f"

alias sca="code/shipcloud/app"
alias scm="code/shipcloud/marketing"

# Rails
alias migrate="rake db:migrate db:rollback && rake db:migrate"
alias m="migrate"
alias rk="rake"
alias b="bundle"
alias bi="b install --path vendor/bundle"
alias bil="bi --local"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/bundle' >> .gitignore"
alias fs="foreman start"
alias rs='bundled_rspec'
alias test_dog="dog log/test.log"
alias dev_dog="dog log/development.log"
# alias s="rspec"

# homebrew
alias buu="brew update && brew upgrade"

# other
alias dotfiles="cd ~/.dotfiles && $EDITOR ."
