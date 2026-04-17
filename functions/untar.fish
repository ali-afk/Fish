function untar --wraps='tar' --description 'Extract .tar.gz archive'
    if test (count $argv) -eq 0
        echo "Usage: untar <archive>"
        return 1
    end
    
    tar -zxvf $argv[1]
end