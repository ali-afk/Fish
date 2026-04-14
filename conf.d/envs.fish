set -g fish_greeting

# History configuration - match bash HISTSIZE
set -g fish_history_max_size 32768

# Ensure fzf history search shows preview (empty to not override the built-in preview)
set -gx fzf_history_opts
