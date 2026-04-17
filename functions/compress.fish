function compress --wraps=tar --description 'Compress directory to .tar.gz'
  set dir $argv[1]
  set dir (string replace -r '/$' '' -- $dir)
  tar -czf "$dir.tar.gz" "$dir"
end
