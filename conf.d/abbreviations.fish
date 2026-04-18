abbr oc opencode
abbr pod podman
abbr lg lazygit
abbr lzd lazydocker
abbr sue sudoedit
abbr ls 'eza -lh --group-directories-first --icons --git'
abbr lsa 'eza -lha --group-directories-first --icons --git'
abbr lt 'eza -lThL 2 --group-directories-first --icons --git'
abbr lta 'eza -lTahL 2 --group-directories-first --icons --git'
abbr jctl 'journalctl -p 3 -xb'
abbr hw 'hwinfo --short'
abbr decompress 'tar -xzf'

# Systemctl shortcuts
abbr scu 'systemctl --user'
abbr scust 'systemctl --user status'
abbr scure 'systemctl --user restart'
abbr sc 'sudo systemctl'
abbr scst 'sudo systemctl status'
abbr scre 'sudo systemctl restart'

# Git shortcuts
abbr g git
abbr gst 'git status'
abbr gco 'git checkout'
abbr gl 'git pull'
abbr gp 'git push'
abbr glog 'git log --oneline --graph --decorate'
abbr gcam 'git commit -a -m'
abbr gcad 'git commit -a --amend'
abbr gcm 'git commit -m'

# Quick config edits
abbr nf 'n ~/.config/fish/'
abbr nh 'n ~/.config/hypr/'
abbr no 'n "$VAULT"'

# Package management
abbr pacfix 'sudo rm /var/lib/pacman/db.lck'

# Safe deletion system
abbr del 'trash -r'
abbr delf 'rm -rfI'
abbr delfi 'rm -rfi'
abbr edel trash-empty
abbr lsdel trash-list
abbr rdel trash-restore
