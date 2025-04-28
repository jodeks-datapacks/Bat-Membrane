#> batmembrane:image/process/generate
#
# This function generates the image data.

data modify storage batmembrane:image current.image_data set from storage batmembrane:image image_data
data modify storage batmembrane:image current.description set from storage batmembrane:image description
data modify storage batmembrane:image current.pixel_character set from storage batmembrane:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data batmembrane.image 0
# Set width
execute store result score $width batmembrane.image run data get storage batmembrane:image width
# Set height
execute store result score $height batmembrane.image run data get storage batmembrane:image height
# Set length
scoreboard players operation $length batmembrane.image = $width batmembrane.image
scoreboard players operation $length batmembrane.image *= $height batmembrane.image
# Clear remaining entries in tellraw
data remove storage batmembrane:image tellraw

# Add spacing on top
function batmembrane:image/process/append/line_break
# Loop over image data
function batmembrane:image/process/loop_over_image_data
# Add spacing on bottom
function batmembrane:image/process/append/line_break