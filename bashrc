alias llg='ls -ald --group-directories-first .*;echo ----------------------------------------;ls -ald --group-directories-first [!.]*'
alias rm='rm -i'
llg() {
    dir="${1:-.}"  # default to current directory if no argument is given
    # echo "In: $dir"
    (
        cd "$dir" || exit
                pwd
        ls -ald --group-directories-first .* 2>/dev/null
        echo ----------------------------------------
        ls -ald --group-directories-first [!.]* 2>/dev/null
    )
}
