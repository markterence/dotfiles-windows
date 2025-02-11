# Aliases for git bash

# Function to open Windows Terminal for Git Bash with args
wtgb() {
    local attach=""
    local split=""
    while [[ $# -gt 0 ]]; do
        case $1 in
            -a)
                attach="-a"
                shift
                ;;
            -sp)
                split=$2
                shift 2
                ;;
            *)
                shift
                ;;
        esac
    done
    local command="wt -w 0 sp -p 'Git Bash' -d ."
    if [[ $attach == "-a" ]]; then
        command+=" -a"
    fi
    if [[ $split == "v" || $split == "h" ]]; then
        command+=" -sp $split"
    fi
    eval $command
}

# Alias to call the function wtgb
alias wtgb='wtgb'

# Alias to attach to an existing window
alias wtgb-a='wtgb -a'

# Alias to split the window vertically/horizontally
alias wtgb-a-sp-v='wtgb -a -sp v'
alias wtgb-a-sp-h='wtgb -a -sp h'
