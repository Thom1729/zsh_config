export PATH="$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PROMPT='%{$fg_bold[yellow]%}%n@%m %{$fg[blue]%}%~
%(?.%{$fg_bold[green]%}.%{$fg_bold[red]%})$(prompt_char) %{$reset_color%}'
export EDITOR="nano"

unalias -m "*"

# ZSH NAVIGATION

# alias -='cd -'
# alias ...=../..
# alias ....=../../..
# alias .....=../../../..
# alias ......=../../../../..
# alias 1='cd -'
# alias 2='cd -2'
# alias 3='cd -3'
# alias 4='cd -4'
# alias 5='cd -5'
# alias 6='cd -6'
# alias 7='cd -7'
# alias 8='cd -8'
# alias 9='cd -9'
# alias po=popd
# alias pu=pushd
# alias rd=rmdir
# alias d='dirs -v | head -10'

alias history='fc -l 1'

alias gr='egrep --color=auto'
alias gro='egrep --only-matching'

alias l='ls -FHhl --color=auto --group-directories-first --time-style=long-iso'
alias ll='l -A'

alias lg='l | gr'
alias llg='ll | gr'

alias each="xargs --delimiter='\n' --max-args=1"

alias zsh-reload='source ~/.zshrc'

function md {
    mkdir -p "$@"
    cd "$@"
}

function o { $OPEN_COMMAND "${1-.}" }

function s {
    if [[ $# -ne 0 ]]; then
        $SUBLIME_COMMAND $@
    elif [[ -e *.sublime-project ]]; then
        $SUBLIME_COMMAND *.sublime-project
    else
        $SUBLIME_COMMAND .
    fi
}

function prompt_char {
    if [ -d '.svn' ]; then
        echo '⚡'
    elif [ "$( git rev-parse --is-inside-work-tree 2>/dev/null )" ]; then
        echo 'ɣ'
    else
        echo '»'
    fi
}


source "$ZSH_CONFIG/git.sh"
