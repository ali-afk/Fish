function eff --description 'Open fzf-selected file in $EDITOR'
  set file (ff)
  and $EDITOR "$file"
end
