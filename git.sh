alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias gs="git status"

alias git-current-branch="git symbolic-ref --short -q HEAD"

function gpu {
    echo "git push --set-upstream origin $(git-current-branch)"
    git push --set-upstream origin $(git-current-branch)
}

function remove-merged-branches {
    for line in $(git branch --merged | egrep -v "^(\*|master)" | sed 's/^[[:space:]]*//'); do
        git branch --delete "$line"
    done
}
