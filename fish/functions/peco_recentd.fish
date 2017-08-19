function peco_recentd
    commandline | read -l buffer
    z -l | peco | awk '{ print $2 }' | read -l recentd

    if test -n "$recentd"
        commandline "cd $recentd"
        commandline -f execute
    end
    commandline -f repaint
end
