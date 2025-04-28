#> batmembrane:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage batmembrane:image image_data  
# @writes storage batmembrane:image width  
# @writes storage batmembrane:image height  
# @writes storage batmembrane:image background_color  
# @writes storage batmembrane:image description  
# @writes storage batmembrane:image pixel_character.blank  
# @writes storage batmembrane:image pixel_character.chat  
# @writes storage batmembrane:image pixel_character.lore

data remove storage batmembrane:image image_data
data remove storage batmembrane:image width
data remove storage batmembrane:image height
data remove storage batmembrane:image background_color
data remove storage batmembrane:image description

$data modify storage batmembrane:image image_data set value $(image_data)
$data modify storage batmembrane:image width set value $(width)
$data modify storage batmembrane:image height set value $(height)
$data modify storage batmembrane:image background_color set value "$(background_color)"
$data modify storage batmembrane:image description set value $(description)

data modify storage batmembrane:image pixel_character.blank set value "　"
data modify storage batmembrane:image pixel_character.pixel set value "▌▌"
data modify storage batmembrane:image pixel_character.line_break set value '\n'

function batmembrane:image/process/generate
