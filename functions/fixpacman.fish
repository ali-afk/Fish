function fixpacman --wraps='sudo rm' --description 'Remove pacman database lock file'
    sudo rm /var/lib/pacman/db.lck
end