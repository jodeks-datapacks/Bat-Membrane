# Copy current pixel
data modify storage batmembrane:image current.pixel_color set \
  from storage batmembrane:image current.image_data[0]
data modify storage batmembrane:image current.description_text set \
  from storage batmembrane:image current.description[0]

scoreboard players add $index.image_data batmembrane.image 1

# Calculate column
scoreboard players operation $index.column batmembrane.image = $index.image_data batmembrane.image
scoreboard players operation $index.column batmembrane.image %= $width batmembrane.image

# Calculate row
scoreboard players operation $index.row batmembrane.image = $index.image_data batmembrane.image
scoreboard players operation $index.row batmembrane.image /= $width batmembrane.image

# Append start spacing
execute if score $index.column batmembrane.image matches 1 run \
  function batmembrane:image/process/append/blank

# Append colored pixel
execute unless data storage batmembrane:image current{pixel_color: ''} run \
  function batmembrane:image/process/append/pixel
# Append background pixel
execute if data storage batmembrane:image current{pixel_color: ''} run \
  function batmembrane:image/process/append/background

# Append description
execute if score $index.column batmembrane.image matches 0 run \
    function batmembrane:image/process/image_end/description

# Remove first element from the image_data array
data remove storage batmembrane:image current.image_data[0]
# Loop over rows
execute if score $index.row batmembrane.image < $height batmembrane.image run \
  function batmembrane:image/process/loop_over_image_data
 