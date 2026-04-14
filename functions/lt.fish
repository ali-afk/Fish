function lt --wraps=eza --description 'eza tree view'
  eza --tree --level=2 --long --icons --git $argv
end
