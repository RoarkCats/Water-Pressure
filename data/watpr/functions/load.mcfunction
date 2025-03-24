tellraw @a {"text":"Thank you for downloading Water Pressure 1.0.0 by RoarkCats!","color":"gold"}

scoreboard objectives add watpr.depth dummy
scoreboard players set #10000 watpr.depth 10000

execute unless score $offset watpr.depth matches -1000..1000 run scoreboard players set $offset watpr.depth 16
execute unless score $armor_mult watpr.depth matches 0.. run scoreboard players set $armor_mult watpr.depth 150
execute unless score $toughness_mult watpr.depth matches 0.. run scoreboard players set $toughness_mult watpr.depth 250
execute unless score $total_mult watpr.depth matches 0.. run scoreboard players set $total_mult watpr.depth 115
execute unless score $damage_diff_scaling watpr.depth matches 0..1 run scoreboard players set $damage_diff_scaling watpr.depth 1

## MUST CONSIDER
# shipwrecks
# ice bergs
# monuments
# coral
# (water) caves below
# river biomes?
# deep non ocean waters?

schedule function watpr:main_5 1t replace