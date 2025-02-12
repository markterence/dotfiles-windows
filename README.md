# dotfiles-windows

> Work in progress

## Installation

To install `aliases.sh` and `install_aliases.ps1`, follow these steps:

1. Open PowerShell and navigate to the directory containing `install_aliases.ps1`.
2. Run the following command to execute the installation script:
   ```powershell
   .\install_aliases.ps1
   ```
3. Verify that `aliases.sh` is sourced in your `.bashrc` file. You can do this by opening `.bashrc` and checking for the following line:
   ```bash
   source "/path/to/aliases.sh"
   ```
4. If the line is not present, add it manually to the end of the `.bashrc` file.

## Notes

- `aliases.sh` is only intended to add aliases for Git Bash for Windows or similar terminal that loads the `.bashrc` used by Git Bash for Windows.

## Checklist

- [x] Working aliases setup for Git Bash for Windows
- [ ] Aliases setup for PowerShell environment (not yet implemented)
