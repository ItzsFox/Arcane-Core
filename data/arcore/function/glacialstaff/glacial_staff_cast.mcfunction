execute at @s run particle minecraft:item_snowball ^ ^1.5 ^.5 0.1 0.1 0.1 0.1 10 force
execute at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 2 0.5
execute at @s run playsound minecraft:item.trident.return master @a ~ ~ ~ 2 0.5
execute at @s rotated as @s positioned ^ ^ ^1 run summon armor_stand ~ ~1 ~ {Invisible:1b,Small:1b,Tags:["GlacialProjectile"],ArmorItems:[{},{},{},{id:"minecraft:packed_ice",count:1b}],DisabledSlots:4096}

execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^3 summon area_effect_cloud run data modify entity @e[tag=GlacialProjectile,limit=1] Motion set from entity @s Pos

kill @e[type=area_effect_cloud]