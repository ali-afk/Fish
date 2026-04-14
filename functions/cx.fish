function cx --description 'Clear screen and launch claude with full permissions'
    printf "\033[2J\033[3J\033[H"
    claude --allow-dangerously-skip-permissions $argv
end
