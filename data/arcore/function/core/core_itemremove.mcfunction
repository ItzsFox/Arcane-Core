execute store result score @s tempCount run data get entity @s Item.count
execute if score @s tempCount matches 2.. run scoreboard players remove @e[type=marker,tag=CoreSpawned] correctItems 1
execute if score @s tempCount matches 2.. run scoreboard players remove @s tempCount 1
execute if score @s tempCount matches 2.. run execute store result entity @s Item.count byte 1 run scoreboard players get @s tempCount
execute if score @s tempCount matches 2.. at @e[type=marker,tag=CoreSpawned] run playsound minecraft:entity.player.splash master @a ~ ~ ~ .2 2
execute if score @s tempCount matches 1 at @e[type=marker,tag=CoreSpawned] run playsound minecraft:entity.player.splash master @a ~ ~ ~ 1 2
execute if score @s tempCount matches 2.. at @e[type=minecraft:item,distance=..2.5,sort=nearest,limit=1] run particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0.02 20 force
execute if score @s tempCount matches 1 at @e[type=minecraft:item,distance=..2.5,sort=nearest,limit=1] run particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0.02 20 force
execute if score @s tempCount matches 1 run scoreboard players remove @e[type=marker,tag=CoreSpawned] correctItems 1
execute if score @s tempCount matches 1 run kill @s

