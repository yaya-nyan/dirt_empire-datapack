#this function should be executed every second
execute as @a if score @s useItem matches 1.. run scoreboard players remove @a useItem 1

schedule function dirtempire:items/slow_update 1t