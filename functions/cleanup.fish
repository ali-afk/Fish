function cleanup --wraps='sudo pacman' --description 'Remove orphan packages with confirmation'
    gum style --border normal --border-foreground 3 --padding "1 2" \
        "Remove orphan packages?" \
        "" \
        "• This will run: sudo pacman -Rns (pacman -Qtdq)" \
        "• Cannot be undone"
    
    if gum confirm "Continue?"
        sudo pacman -Rns (pacman -Qtdq)
    else
        echo "Cancelled"
    end
end