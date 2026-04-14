function ff --description 'fzf file finder with preview'
  if test "$TERM" = xterm-kitty
    fzf --preview 'set mime (file --mime-type -b {}); switch $mime; case "image/*"; kitty icat --clear --transfer-mode=memory --stdin=no --place=$FZF_PREVIEW_COLUMNSx$FZF_PREVIEW_LINES@0x0 {}; case "*"; bat --style=numbers --color=always {}; end' $argv
  else
    fzf --preview 'bat --style=numbers --color=always {}' $argv
  end
end
