#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <input_image>"
  exit 1
fi

input_image="$1"
output_dir=$(dirname "$input_image")
output_image="${output_dir}/resized_${input_image##*/}"

# Resize the image to max width of 800px while maintaining aspect ratio
convert "$input_image" -resize 640\> "$output_image"

# Crop the image so that the height is 390px
convert "$output_image" -gravity center -crop x312+0+0 +repage "$output_image"

echo "Image resized and cropped: $output_image"