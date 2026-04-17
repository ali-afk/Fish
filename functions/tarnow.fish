function tarnow --wraps='tar' --description 'Create tar archive with .tar.gz extension'
    if test (count $argv) -lt 2
        echo "Usage: tarnow <archive> <file/dir...>"
        echo "Example: tarnow backup.tar.gz file1 dir2/"
        return 1
    end
    
    set -l archive $argv[1]
    
    # Ensure .tar.gz extension
    if not string match -q "*.tar.gz" $archive
        set archive "$archive.tar.gz"
    end
    
    tar -acf $archive $argv[2..-1]
end