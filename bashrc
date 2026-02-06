alias llg='ls -ald --group-directories-first .*;echo ----------------------------------------;ls -ald --group-directories-first [!.]*'
alias rm='rm -i'
llg() {
    dir="${1:-.}"  # default to current directory if no argument is given
    # echo "In: $dir"
    (
        cd "$dir" || exit
                pwd
        ls -aldh --group-directories-first .* 2>/dev/null
        echo ----------------------------------------
        ls -aldh --group-directories-first [!.]* 2>/dev/null
    )
}
alias tmuxlog='tmux list-panes -a -F "#{session_name}:#{window_index}.#{pane_index} [#{?pane_pipe,LOGGING,off}]"'
