execute unless score @s summoning matches 1 run summon armor_stand ~ ~ ~ {CustomName:'{"text":"summonLightning"}',Invisible:1b}
execute unless score @s summoning matches 1 run scoreboard players set @s useItem 100
execute unless score @s summoning matches 1 run scoreboard players set @s summoning 1

execute at @s rotated as @s if score @s summoning matches 1 run summon armor_stand ^ ^1 ^7 {CustomName:'{"text":"lightningPos"}',Invisible:1b}
execute if score @s summoning matches 1 as @e[name=lightningPos,limit=1,sort=nearest] at @s run spreadplayers ~ ~ 0 1 true @e[name=summonLightning,limit=1,sort=nearest]
execute at @s rotated as @s if score @s summoning matches 1 run kill @e[name=lightningPos,distance=..10]

execute if score @s summoning matches 1 as @e[name=summonLightning,limit=1,sort=nearest] at @s rotated as @s run particle minecraft:landing_obsidian_tear ~ ~ ~ 1 0 1 0 3

execute if score @s useItem matches 0 at @e[name=summonLightning,limit=1,sort=nearest] run summon lightning_bolt ~ ~ ~
execute if score @s useItem matches 0 at @e[name=summonLightning,limit=1,sort=nearest] run scoreboard players set @s summoning 0
execute if score @s useItem matches 0 run kill @e[name=summonLightning,distance=..10]