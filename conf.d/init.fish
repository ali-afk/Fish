if status is-interactive
    fish_vi_key_bindings

    if command -v mise &>/dev/null
        mise activate fish | source
    end

    if command -v zoxide &>/dev/null
        zoxide init --cmd=cd fish | source
    end

    if command -v starship &>/dev/null
        starship init fish | source
    end

    if command -v fzf &>/dev/null
        fzf_configure_bindings --processes=
    end
end
