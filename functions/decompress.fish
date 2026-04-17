function decompress --wraps=tar --description 'Extract .tar.gz archive'
  tar -xzf $argv
end
