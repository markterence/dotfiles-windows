# PowerShell script to install aliases.sh and add it to .bashrc

# Path to the .bashrc file
$bashrcPath = "$HOME\.bashrc"

# Path to the aliases.sh file
$aliasesPath = "$PSScriptRoot\aliases.sh"

# Check if aliases.sh is already sourced in .bashrc
$aliasesSourceCmd = "source `"$aliasesPath`""
$bashrcContent = Get-Content -Path $bashrcPath -Raw

if ($bashrcContent -notcontains $aliasesSourceCmd) {
    # Append the source command for aliases.sh to .bashrc
    Add-Content -Path $bashrcPath -Value "`n$aliasesSourceCmd"
    Write-Output "aliases.sh has been added to .bashrc"
} else {
    Write-Output "aliases.sh is already sourced in .bashrc"
}

Write-Output "Installation complete"
