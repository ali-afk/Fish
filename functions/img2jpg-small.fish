function img2jpg-small
  set img $argv[1]
  set rest $argv[2..]
  set base (string replace -r '\.[^.]*$' '' -- $img)
  magick "$img" $rest -resize "1080x>" -quality 85 -strip "$base-small.jpg"
end
