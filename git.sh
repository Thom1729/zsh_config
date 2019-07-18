alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias gs="git status"

alias git-current-branch="git symbolic-ref --short -q HEAD"

function gpu {
    echo "git push --set-upstream origin $(git-current-branch)"
    git push --set-upstream origin $(git-current-branch)
}
