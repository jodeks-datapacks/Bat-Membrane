scoreboard objectives add jodek.config dummy
execute unless score &bat_membrane_load_message jodek.config = &bat_membrane_load_message jodek.config run scoreboard players set &bat_membrane_load_message jodek.config 1
execute unless score &bat_membrane_advancements jodek.config = &bat_membrane_advancements jodek.config run scoreboard players set &bat_membrane_advancements jodek.config 1

function bat_membrane:app/gamerule