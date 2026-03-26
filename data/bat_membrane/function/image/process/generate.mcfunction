#> bat_membrane:image/process/generate
#
# This function generates the image data.

data modify storage bat_membrane:image data.current.image_data set from storage bat_membrane:image data.image_data
data modify storage bat_membrane:image data.current.description set from storage bat_membrane:image data.description
data modify storage bat_membrane:image data.current.pixel_character set from storage bat_membrane:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data bat_membrane.image 0
# Set width
execute store result score $width bat_membrane.image run data get storage bat_membrane:image data.width
# Set height
execute store result score $height bat_membrane.image run data get storage bat_membrane:image data.height
# Set length
scoreboard players operation $length bat_membrane.image = $width bat_membrane.image
scoreboard players operation $length bat_membrane.image *= $height bat_membrane.image
# Clear remaining entries in tellraw
data remove storage bat_membrane:image data.tellraw

# Add spacing on top
function bat_membrane:image/process/append/line_break
# Loop over image data
function bat_membrane:image/process/loop_over_image_data
# Add spacing on bottom
function bat_membrane:image/process/append/line_break