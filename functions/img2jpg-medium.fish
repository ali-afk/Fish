function img2jpg-medium --description 'Transcode image to 4K JPG (max 2160px wide)'
  set img $argv[1]
  set rest $argv[2..]
  set base (string replace -r '\.[^.]*$' '' -- $img)
  magick "$img" $rest -resize "2160x>" -quality 85 -strip "$base-medium.jpg"
end
