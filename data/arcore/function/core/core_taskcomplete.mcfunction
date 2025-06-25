scoreboard players add @e[type=marker,tag=CoreSpawned] coreLevel 1
scoreboard players set @e[type=marker,tag=CoreSpawned] correctItems 0
execute as @e[type=marker,tag=CoreSpawned] at @s run tag @s remove HasTask
execute as @e[type=minecraft:marker,tag=CoreSpawned,limit=1] at @s run title @a title [{"text":"Core upgraded to level ","color":"light_purple","bold":true},{"score":{"name":"@s","objective":"coreLevel"},"color":"gold"}]
execute as @e[type=minecraft:marker,tag=CoreSpawned,limit=1] at @s run title @a subtitle [{"text":"by ","color":"light_purple"},{"selector":"@p","color":"gold"}]
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.7


