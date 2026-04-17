# Systemctl shortcuts
abbr -a scu 'systemctl --user'
abbr -a scust 'systemctl --user status'
abbr -a scure 'systemctl --user restart'
abbr -a sc 'sudo systemctl'
abbr -a scst 'sudo systemctl status'
abbr -a scre 'sudo systemctl restart'

# Git shortcuts (complement existing g, gcam, gcad)
abbr -a g git
abbr -a gst 'git status'
abbr -a gco 'git checkout'
abbr -a gl 'git pull'
abbr -a gp 'git push'
abbr -a glog 'git log --oneline --graph --decorate'
abbr -a gcam 'git commit -a -m'
abbr -a gcad 'git commit -a --amend'
abbr -a gcm 'git commit -m'

# Quick config edits
abbr -a nf 'n ~/.config/fish/'
abbr -a nh 'n ~/.config/hypr/'
abbr -a no 'n "$VAULT"'

