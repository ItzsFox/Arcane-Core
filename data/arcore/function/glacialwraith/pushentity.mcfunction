execute as @s[type=!player,type=!armor_stand] run tag @s add inRange
execute as @s[type=!player,type=!armor_stand] run tag @s add inAnimation

execute rotated as @s at @p positioned 0.0 0.0 0.0 positioned ^ ^ ^-2 summon area_effect_cloud run data modify entity @e[tag=inRange,limit=1] Motion set from entity @s Pos

execute at @e[tag=inRange] run playsound minecraft:entity.allay.item_thrown master @a ~ ~ ~ 1 0
execute at @e[tag=inRange] run playsound minecraft:item.bottle.fill_dragonbreath master @a ~ ~ ~ 1 2
execute at @e[tag=inRange] run function arcore:glacialwraith/barrier/circle_anim
kill @e[type=area_effect_cloud]
tag @s remove inRange