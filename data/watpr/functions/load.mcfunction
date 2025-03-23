tellraw @a {"text":"Thank you for downloading Water Pressure 1.0.0 by RoarkCats!","color":"gold"}

scoreboard objectives add watpr.depth dummy

execute unless score $offset watpr.depth matches -1000..1000 run scoreboard players set $offset watpr.depth 10

## MUST CONSIDER
# shipwrecks
# ice bergs
# monuments
# coral
# (water) caves below
# river biomes?
# deep non ocean waters?

schedule function watpr:main_5 1t replace