function backup --wraps=cp --description 'Create backup copy with .bak extension'
    cp $argv[1] $argv[1].bak
end