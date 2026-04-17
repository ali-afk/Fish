function gitpkg --wraps='pacman' --description 'Count -git packages installed'
    set -l count (pacman -Q | grep -i "\-git" | wc -l)
    echo "$count -git packages installed"
end