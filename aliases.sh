# Aliases for git bash

# Function to open Windows Terminal for Git Bash with args
#!/bin/bash

# Open Windows Terminal with Git Bash

wtgb() {
    if [[ "$1" == "help" ]]; then
        echo "Usage: wtgb [option]"
        echo "Options:"
        echo "  sph    - Split horizontally"
        echo "  sp|spv - Split vertically"
        echo "  d      - Open a detached new window"
        echo "  help   - Show this help message"
        echo ""
        echo "Other examples:"
        echo "Pass any other original Windows Terminal args."
        echo "  wtgb sph --title \"My Git Bash\""
        echo "  wtgb d --maximized"
        return
    fi

    local cmd="wt -p \"Git Bash\" -d ."
    local extra_args=()

    while [[ $# -gt 0 ]]; do
        case "$1" in
            "sph")
                cmd="wt -w 0 sp -H -p \"Git Bash\" -d ."
                ;;
            "sp"|"spv")
                cmd="wt -w 0 sp -p \"Git Bash\" -d ."
                ;;
            "d")
                cmd="wt -p \"Git Bash\" -d ."
                ;;
            *)
                extra_args+=("$1") # Collect additional arguments
                ;;
        esac
        shift
    done

    # Append extra args if any
    if [[ ${#extra_args[@]} -gt 0 ]]; then
        cmd+=" ${extra_args[*]}"
    fi

    eval "$cmd"
}

