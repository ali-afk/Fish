function img2jpg
  set img $argv[1]
  set rest $argv[2..]
  set base (string replace -r '\.[^.]*$' '' -- $img)
  magick "$img" $rest -quality 85 -strip "$base-converted.jpg"
end
