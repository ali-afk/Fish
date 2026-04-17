# Safe deletion system
function del --description 'Move files/dirs to trash (safe delete)'
    trash -r $argv
end

function delf --description 'Permanent recursive delete (prompt once for >3 files)'
    rm -rfI $argv
end

function delfi --description 'Interactive force recursive delete'
    rm -rfi $argv
end

function lsdel --description 'List files in trash'
    trash-list
end

function rdel --description 'Restore files from trash'
    trash-restore
end

function edel --description 'Empty trash (with gum confirmation)'
    gum style --border normal --border-foreground 1 --padding "1 2" \
        "Empty Trash Warning" \
        "" \
        "• This will PERMANENTLY delete all files in trash" \
        "• Cannot be recovered"

    if gum confirm "Empty trash?"
        trash-empty
        echo "Trash emptied"
    else
        echo Cancelled
    end
end

