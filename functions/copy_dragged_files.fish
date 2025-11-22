function copy_dragged_files
    for filepath in $argv
        set pathNoPrefix (string replace "file://" "" "$filepath")
        set cleanPath (string replace --all "%20" " " "$pathNoPrefix")
        cp -nR "$cleanPath" "$PWD"
    end
end
