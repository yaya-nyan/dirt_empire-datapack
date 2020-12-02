execute if entity @s[gamemode=!creative] run function dirtempire:items/wands/durability

execute positioned ^ ^ ^15 run summon minecraft:armor_stand ~ ~1.5 ~ {Invisible:1b,NoGravity:1b,CustomName:'{"text":"delete"}'}
execute positioned ^ ^ ^1 run summon minecraft:snowball ~ ~1.5 ~ {CustomName:'{"text":"snow-wand.proj"}',Tags:["spawning"],Motion:[0.0,0.5,0.0]}

execute as @e[name=delete,limit=1,sort=nearest] store result score @s temp run data get entity @s Pos[0]
execute as @e[type=snowball,name=snow-wand.proj,tag=spawning] store result score @s temp run data get entity @s Pos[0]
execute as @e[type=snowball,name=snow-wand.proj,tag=spawning] store result entity @s Motion[0] double 0.025 run scoreboard players operation @e[name=delete] temp -= @s temp

execute as @e[name=delete,limit=1,sort=nearest] store result score @s temp run data get entity @s Pos[2]
execute as @e[type=snowball,name=snow-wand.proj,tag=spawning] store result score @s temp run data get entity @s Pos[2]
execute as @e[type=snowball,name=snow-wand.proj,tag=spawning] store result entity @s Motion[2] double 0.025 run scoreboard players operation @e[name=delete] temp -= @s temp

execute as @e[type=snowball,name="snow-wand.proj",tag=spawning] run tag @s remove spawning
kill @e[name=delete]