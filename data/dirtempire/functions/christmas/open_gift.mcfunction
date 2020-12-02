loot spawn ~ ~ ~ kill @s

execute if entity @s[tag=Tier0] run particle minecraft:dust 0.2 0.2 0.2 1 ~ ~ ~ 0.25 0.25 0.25 1 25
execute if entity @s[tag=Tier0] run playsound minecraft:entity.villager.no player @a ~ ~ ~

execute if entity @s[tag=Tier1] run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.25 0.25 0.25 1 25
execute if entity @s[tag=Tier1] run playsound minecraft:entity.villager.yes player @a ~ ~ ~

execute if entity @s[tag=Tier2] run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.25 0.25 0.25 1 25
execute if entity @s[tag=Tier2] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.1 10
execute if entity @s[tag=Tier2] run playsound minecraft:block.note_block.bell player @a ~ ~ ~
execute if entity @s[tag=Tier2] run playsound minecraft:entity.villager.yes player @a ~ ~ ~

execute if entity @s[tag=Tier3] run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.25 0.25 0.25 1 25
execute if entity @s[tag=Tier3] run particle minecraft:falling_dust snow ~ ~3 ~ 1 0.1 1 0.1 100
execute if entity @s[tag=Tier3] run playsound minecraft:block.note_block.bell player @a ~ ~ ~
execute if entity @s[tag=Tier3] run playsound minecraft:entity.villager.yes player @a ~ ~ ~

tp @s[type=bat] 0 0 0
kill @s[type=bat]