function big --description 'List installed packages sorted by size'
    expac -H M '%m\t%n' | sort -h | nl
end