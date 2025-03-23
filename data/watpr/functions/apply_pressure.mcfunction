# run by in_water

scoreboard players operation #temp watpr.depth = @s watpr.depth
# initiate vars 
execute store result score #armor watpr.depth run attribute @s generic.armor get 1.5
execute store result score #toughness watpr.depth run attribute @s generic.armor_toughness get 2.5

# apply offsets
scoreboard players operation #temp watpr.depth -= #armor watpr.depth
scoreboard players operation #temp watpr.depth -= #toughness watpr.depth
scoreboard players operation #temp watpr.depth -= $offset watpr.depth

# apply damage/effects
execute if score #temp watpr.depth matches 1..5 run damage @s 1 watpr:pressure
execute if score #temp watpr.depth matches 6..10 run damage @s 2 watpr:pressure
execute if score #temp watpr.depth matches 11..15 run damage @s 3 watpr:pressure
execute if score #temp watpr.depth matches 16..25 run damage @s 4 watpr:pressure
execute if score #temp watpr.depth matches 26.. run damage @s 5 watpr:pressure

execute if score #temp watpr.depth matches 6.. run effect give @s nausea 4 0 true
execute if score #temp watpr.depth matches 16.. run effect give @s blindness 2 0 true