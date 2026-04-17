# yay wrapper with subcommands
function pac --description 'yay wrapper with intuitive subcommands'
    if test (count $argv) -eq 0
        echo "Usage: pac <command> [options]"
        echo "Commands:"
        echo "  install, i <pkg>     - Install package"
        echo "  remove,  r <pkg>     - Remove package with dependencies"
        echo "  search,  s <term>    - Search packages"
        echo "  query,   q [pkg]     - Query installed packages"
        echo "  info,    info <pkg>  - Show package info"
        echo "  *any yay flag*       - Passed directly to yay"
        return 1
    end

    set -l cmd $argv[1]
    set -l remaining $argv[2..]

    switch $cmd
        case i install
            yay -S $remaining
        case r remove rm uninstall
            # yay already asks confirmation for -Rns
            yay -Rns $remaining
        case s search find
            yay -Ss $remaining
        case q query list
            yay -Qi $remaining
        case info show
            yay -Si $remaining
        case '*'
            # Pass through to yay
            yay $argv
    end
end

function pacfix --wraps='sudo rm' --description 'Remove pacman database lock file'
    sudo rm /var/lib/pacman/db.lck
end

