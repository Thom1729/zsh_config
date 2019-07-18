export OPEN_COMMAND='gnome-open'

alias xcopy='tee >(perl -pe "chomp if eof" | xclip -i -selection clipboard)'
alias xpaste='xclip -o -selection clipboard'
