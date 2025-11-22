function force_copy_dragged_files
    for filepath in $argv
        set cleanPath (string replace --regex "^file://" "" "$filepath")
        cp -fR "$cleanPath" .
    end
end
