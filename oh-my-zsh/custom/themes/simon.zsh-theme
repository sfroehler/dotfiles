# Shows little symbol '±' if you're currently at a git repo and '○' all other times
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '○'
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

# Git sometimes goes into a detached head state. git_prompt_info doesn't
# return anything in this case. So wrap it in another function and check
# for an empty string.
function check_git_prompt_info() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        if [[ -z $(git_prompt_info) ]]; then
            echo "%{$fg[magenta]%}detached-head%{$reset_color%})"
        else
            echo "$(git_prompt_info)"
        fi
    fi
}


# Build the main prompt
if [[ "$TERM" != "dumb" ]] && [[ "$DISABLE_LS_COLORS" != "true" ]]; then
    PROMPT='%{$fg_bold[green]%}%n@%m%{$reset_color%} %{$fg[blue]%}${PWD/#$HOME/~}%{$reset_color%} $(git_prompt_short_sha)$(check_git_prompt_info)$(git_prompt_status)%{$reset_color%}${return_code}
$(virtualenv_info)$(prompt_char) '

    ZSH_THEME_GIT_PROMPT_PREFIX="|%{$fg[white]%}"
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⚡%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[red]%}!%{$reset_color%}"
    ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}✓%{$reset_color%}"

    # Display exitcode on the right when >0
    return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

    # Loads rvm info to the right side of the zsh prompt showing: ruby-version@gemset-name
    RPROMPT="%B%F{black}$(rbenv version-name)%f%b"

    # Displays different symbols (simultaneously) depending on the current status of your git repo.
    ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
    ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
    ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
    ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
    ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
    ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

    # Format for git_prompt_long_sha() and git_prompt_short_sha()
    ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg[yellow]%}"
    ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"

else
    PROMPT='[%n@%m:%~$(git_prompt_info)]
%# '

    ZSH_THEME_GIT_PROMPT_PREFIX=" on"
    ZSH_THEME_GIT_PROMPT_SUFFIX=""
    ZSH_THEME_GIT_PROMPT_DIRTY=""
    ZSH_THEME_GIT_PROMPT_CLEAN=""

    # Display exitcode on the right when >0
    return_code="%(?..%? ↵)"

    RPROMPT='${return_code}$(git_prompt_status)'

    ZSH_THEME_GIT_PROMPT_ADDED=" ✚"
    ZSH_THEME_GIT_PROMPT_MODIFIED=" ✹"
    ZSH_THEME_GIT_PROMPT_DELETED=" ✖"
    ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
    ZSH_THEME_GIT_PROMPT_UNMERGED=" ═"
    ZSH_THEME_GIT_PROMPT_UNTRACKED=" ✭"
fi
