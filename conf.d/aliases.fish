# Tools
alias c opencode
alias d docker

# Pacman helpers
alias fixpacman="sudo rm /var/lib/pacman/db.lck" # Remove pacman lock file
alias wget='wget -c ' # Resume downloads

# System info
alias hw='hwinfo --short' # Hardware summary
alias big="expac -H M '%m\t%n' | sort -h | nl" # Sort installed packages by size
alias jctl="journalctl -p 3 -xb" # System journal errors

# Arch package utilities
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl" # Recently installed packages
