function lsa --wraps=ls --description 'ls including hidden files'
  ls -a $argv
end
