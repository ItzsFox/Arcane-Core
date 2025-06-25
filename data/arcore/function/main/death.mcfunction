#save coords
execute as @a store result score @s x run data get entity @s Pos[0]
execute as @a store result score @s y run data get entity @s Pos[1]
execute as @a store result score @s z run data get entity @s Pos[2]

#announce death
execute as @a[scores={deaths=1}] if score @s y matches ..-120 run tellraw @a ["",{"text":"","color":"#eb4b1b","extra":[{"selector":"@s"},{"text":" died!"},{"text":"\n"},{"text":"A Soul Guardian has appeared at: ","color":"gold"},{"score":{"name":"@s","objective":"x"},"color":"white"},{"text":", ","color":"gold"},{"text":"0","color":"white"},{"text":", ","color":"gold"},{"score":{"name":"@s","objective":"z"},"color":"white"},{"text":".","color":"gold"}]}]

execute as @a[scores={deaths=1}] unless score @s y matches ..-120 run tellraw @a ["",{"text":"","color":"#eb4b1b","extra":[{"selector":"@s"},{"text":" died!"},{"text":"\n"},{"text":"A Soul Guardian has appeared at: ","color":"gold"},{"score":{"name":"@s","objective":"x"},"color":"white"},{"text":", ","color":"gold"},{"score":{"name":"@s","objective":"y"},"color":"white"},{"text":", ","color":"gold"},{"score":{"name":"@s","objective":"z"},"color":"white"},{"text":".","color":"gold"}]}]
#check for spawn safety
execute as @a[scores={deaths=1}] at @s run execute if block ~ ~ ~ minecraft:lava run setblock ~ ~ ~ minecraft:obsidian
function arcore:soulguardian/soulguardian_place
