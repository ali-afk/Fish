function eff --wraps='$EDITOR' --description 'Open fzf-selected file in $EDITOR'
  set file (ff)
  and $EDITOR "$file"
end
