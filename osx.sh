export OPEN_COMMAND='open'
export SUBLIME_COMMAND="/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl"

# GNU Coreutils

export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH

function play-sound {
    afplay "/System/Library/Sounds/$1.aiff" &!
}

function ding {
    local last_status=$?
    if [ $last_status -eq 0 ]; then
        play-sound Hero
    else
        play-sound Sosumi
        return $last_status
    fi
}
