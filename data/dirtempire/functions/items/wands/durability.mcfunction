execute unless entity @e[type=item,tag=dur,limit=1,distance=..2] run summon minecraft:item ~ ~ ~ {NoGravity:true,PickupDelay:32767s,Tags:["dur"],Item:{id:"minecraft:knowledge_book",Count:1b,tag:{display:{Name:'{"text":"ERROR"}'}}}}
data modify entity @e[type=minecraft:item,tag=dur,sort=nearest,limit=1] Item set from entity @s SelectedItem

execute as @e[type=minecraft:item,tag=dur,sort=nearest,limit=1] store result score @s temp2 run data get entity @s Item.tag.wandDamage
execute as @e[type=minecraft:item,tag=dur,sort=nearest,limit=1] if score @s temp2 matches 4.. as @p at @s run function dirtempire:items/durability
execute as @e[type=minecraft:item,tag=dur,sort=nearest,limit=1] if score @s temp2 matches 4.. store result entity @s Item.tag.wandDamage int 1 run scoreboard players set @s temp 0

execute as @e[type=minecraft:item,tag=dur,sort=nearest,limit=1] store result score @s temp2 run data get entity @s Item.tag.wandDamage
execute as @e[type=minecraft:item,tag=dur,sort=nearest,limit=1] store result entity @s Item.tag.wandDamage int 1 run scoreboard players add @s temp2 1

execute as @e[type=minecraft:item,tag=dur,sort=nearest,limit=1] store result score @s temp run data get entity @s Item.tag.Damage
execute if data entity @s SelectedItem.tag.usesMana as @e[type=minecraft:item,tag=dur,sort=nearest,limit=1] if score @s temp matches 26.. run playsound minecraft:item.shield.break player @a ~ ~ ~
execute if data entity @s SelectedItem.tag.usesMana as @e[type=minecraft:item,tag=dur,sort=nearest,limit=1] if score @s temp matches 26.. run kill @s

execute as @e[distance=..5,type=minecraft:item,tag=!dur] run data merge entity @s {PickupDelay:5s}

give @s minecraft:oak_boat{Clutter:true,CustomModelData:99} 36
kill @e[distance=..2,type=minecraft:item,nbt={Item:{tag:{Clutter:true}}}]
replaceitem entity @s weapon.mainhand minecraft:air
data merge entity @e[type=minecraft:item,tag=dur,sort=nearest,limit=1] {PickupDelay:0s}
stopsound @s player minecraft:entity.item.pickup