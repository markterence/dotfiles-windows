# Aliases for Powershell 7

# Function to open Windows Terminal for Git Bash with args
function wtgb {
    param (
        [string]$attach = "",
        [string]$split = ""
    )
    $command = "wt -w 0 sp -p 'Git Bash' -d ."
    if ($attach -eq "-a") {
        $command += " -a"
    }
    if ($split -eq "v" -or $split -eq "h") {
        $command += " -sp $split"
    }
    Invoke-Expression $command
}

# Alias to call the function wtgb
Set-Alias wtgb wtgb

# Alias to attach to an existing window
Set-Alias wtgb-a { wtgb -a }

# Alias to split the window vertically/horizontally
Set-Alias wtgb-a-sp-v { wtgb -a -sp v }
Set-Alias wtgb-a-sp-h { wtgb -a -sp h }
