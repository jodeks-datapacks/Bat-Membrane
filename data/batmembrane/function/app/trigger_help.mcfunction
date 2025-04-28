scoreboard players set @s help.batmembrane 0

tellraw @s \
[\
  "\n",\
  {\
    text:"[HELP] ",\
    color:"gray"\
  },\
  {\
    text:"Bat Membrane",\
    bold:true,\
    hover_event:\
    {\
      action:"show_item",\
      id:"minecraft:phantom_membrane"\
    }\
  },\
  "\n\nTo uninstall run:\n",\
  {\
    text:"/function batmembrane:uninstall",\
    color:"yellow"\
  },\
  "\n\nThen ",\
  {\
    text:"delete the file",\
    color:"yellow"\
  },\
  " or do:\n",\
  {\
    text:"/datapack disable datapack.zip",\
    color:"yellow"\
  },\
  "\n\nRun ",\
  {\
    text:"/reload",\
    color:"yellow"\
  },\
  "\n\n",\
  {\
    text:"For the mod:\ndelete the mod.jar and restart the server/client",\
    color:"gray"\
  },\
  "\n\n",\
  {\
    text:"[LINK] ",\
    color:"gray",\
    click_event:\
    {\
      action:"open_url",\
      url:"https://modrinth.com/datapack/bat-membrane"\
    },\
    hover_event:\
    {\
      action:"show_text",\
      value:"modrinth.com/datapack/bat-membrane"\
    }\
  },\
  {\
    text:"Modrinth Bat Membrane",\
    click_event:\
    {\
      action:"open_url",\
      url:"https://modrinth.com/datapack/bat-membrane"\
    },\
    hover_event:\
    {\
      action:"show_text",\
      value:"modrinth.com/datapack/bat-membrane"\
    },\
    color:"dark_purple"\
  },\
  "\n\n",\
  {\
    text:"[LINK] ",\
    color:"gray",\
    click_event:\
    {\
      action:"open_url",\
      url:"https://discord.gg/ScXkDNHnYX"\
    },\
    hover_event:\
    {\
      action:"show_text",\
      value:"discord.gg/ScXkDNHnYX"\
    }\
  },\
  {\
    text:"Discord Server",\
    color:"blue",\
    click_event:\
    {\
      action:"open_url",\
      url:"https://discord.gg/ScXkDNHnYX"\
    },\
    hover_event:\
    {\
      action:"show_text",\
      value:"discord.gg/ScXkDNHnYX"\
    }\
  },\
  "\n "\
]

