# Append blank
function batmembrane:image/process/append/blank

data modify storage batmembrane:image tellraw append \
  from storage batmembrane:image current.description_text

# Append blank
function batmembrane:image/process/append/blank

# Append line_break
execute unless score $index.image_data batmembrane.image = $length batmembrane.image \
  run function batmembrane:image/process/append/line_break

# Remove first element from the description
data remove storage batmembrane:image current.description[0]
 