ZSH_CONFIG=$(dirname $0)

source "$ZSH_CONFIG/oh-my-zsh.sh"
source "$ZSH_CONFIG/common.sh"

case $(uname) in
    Darwin) source "$ZSH_CONFIG/osx.sh" ;;
    Linux ) source "$ZSH_CONFIG/linux.sh" ;;
esac

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR=nano
else
    
fi
