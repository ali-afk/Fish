# Core navigation helper
function _cd_to --description 'Navigate to base directory with optional subpath'
    set -l base $argv[1]
    set -l subpath $argv[2..]

    if test -n "$subpath[1]"
        set -l full_path "$base/$subpath"
        if test -d "$full_path"
            cd "$full_path"
        else
            echo "Directory does not exist: $full_path"
            return 1
        end
    else
        if test -d "$base"
            cd "$base"
        else
            echo "Directory does not exist: $base"
            return 1
        end
    end
end

# Specific shortcuts
function cdc --description 'Go to ~/.config'
    _cd_to ~/.config $argv
end

function cdl --description 'Go to ~/.local'
    _cd_to ~/.local $argv
end

function cdls --description 'Go to ~/.local/share'
    _cd_to ~/.local/share $argv
end

function cdo --description 'Go to Obsidian vault'
    _cd_to "$VAULT" $argv
end

function cdw --description 'Go to ~/Work'
    _cd_to ~/Work $argv
end

function cdws --description 'Go to ~/Work/Source'
    _cd_to ~/Work/Source $argv
end

function cdd --description 'Go to ~/Documents'
    _cd_to ~/Documents $argv
end

function cdn --description 'Go to ~/Downloads'
    _cd_to ~/Downloads $argv
end

function cdm --description 'Go to ~/Media'
    _cd_to ~/Media $argv
end

function cdmm --description 'Go to ~/Media/Music/'
    _cd_to ~/Media/Music $argv
end

function cdmp --description 'Go to ~/Media/Pictures/'
    _cd_to ~/Media/Pictures $argv
end

function cdmv --description 'Go to ~/Media/Videos/'
    _cd_to ~/Media/Videos $argv
end

function cdco --description 'Go to containers directory'
    cd "$CONTAINERS"
end