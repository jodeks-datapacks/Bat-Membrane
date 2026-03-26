#> bat_membrane:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage bat_membrane:image data.image_data  
# @writes storage bat_membrane:image data.width  
# @writes storage bat_membrane:image data.height  
# @writes storage bat_membrane:image data.background_color  
# @writes storage bat_membrane:image data.description  
# @writes storage bat_membrane:image data.pixel_character.blank  
# @writes storage bat_membrane:image data.pixel_character.chat  
# @writes storage bat_membrane:image data.pixel_character.lore

data remove storage bat_membrane:image data.image_data
data remove storage bat_membrane:image data.width
data remove storage bat_membrane:image data.height
data remove storage bat_membrane:image data.background_color
data remove storage bat_membrane:image data.description

$data modify storage bat_membrane:image data.image_data set value $(image_data)
$data modify storage bat_membrane:image data.width set value $(width)
$data modify storage bat_membrane:image data.height set value $(height)
$data modify storage bat_membrane:image data.background_color set value "$(background_color)"
$data modify storage bat_membrane:image data.description set value $(description)

data modify storage bat_membrane:image data.pixel_character.blank set value "　"
data modify storage bat_membrane:image data.pixel_character.pixel set value "▌▌"
data modify storage bat_membrane:image data.pixel_character.line_break set value '\n'

function bat_membrane:image/process/generate
