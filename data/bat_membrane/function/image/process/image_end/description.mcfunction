# Append blank
function bat_membrane:image/process/append/blank

data modify storage bat_membrane:image data.tellraw append \
  from storage bat_membrane:image data.current.description_text

# Append blank
function bat_membrane:image/process/append/blank

# Append line_break
execute unless score $index.image_data bat_membrane.image = $length bat_membrane.image \
  run function bat_membrane:image/process/append/line_break

# Remove first element from the description
data remove storage bat_membrane:image data.current.description[0]
 