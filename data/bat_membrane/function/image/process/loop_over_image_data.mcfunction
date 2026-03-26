# Copy current pixel
data modify storage bat_membrane:image data.current.pixel_color set \
  from storage bat_membrane:image data.current.image_data[0]
data modify storage bat_membrane:image data.current.description_text set \
  from storage bat_membrane:image data.current.description[0]

scoreboard players add $index.image_data bat_membrane.image 1

# Calculate column
scoreboard players operation $index.column bat_membrane.image = $index.image_data bat_membrane.image
scoreboard players operation $index.column bat_membrane.image %= $width bat_membrane.image

# Calculate row
scoreboard players operation $index.row bat_membrane.image = $index.image_data bat_membrane.image
scoreboard players operation $index.row bat_membrane.image /= $width bat_membrane.image

# Append start spacing
execute if score $index.column bat_membrane.image matches 1 run \
  function bat_membrane:image/process/append/blank

# Append colored pixel
execute unless data storage bat_membrane:image data.current{pixel_color: ''} run \
  function bat_membrane:image/process/append/pixel
# Append background pixel
execute if data storage bat_membrane:image data.current{pixel_color: ''} run \
  function bat_membrane:image/process/append/background

# Append description
execute if score $index.column bat_membrane.image matches 0 run \
    function bat_membrane:image/process/image_end/description

# Remove first element from the image_data array
data remove storage bat_membrane:image data.current.image_data[0]
# Loop over rows
execute if score $index.row bat_membrane.image < $height bat_membrane.image run \
  function bat_membrane:image/process/loop_over_image_data
 