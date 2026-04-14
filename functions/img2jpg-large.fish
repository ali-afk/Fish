function img2jpg-large --description 'Transcode image to 6K JPG (max 3160px wide)'
  set img $argv[1]
  set rest $argv[2..]
  set base (string replace -r '\.[^.]*$' '' -- $img)
  magick "$img" $rest -resize "3160x>" -quality 85 -strip "$base-large.jpg"
end
