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