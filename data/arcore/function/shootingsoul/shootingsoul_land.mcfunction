#shootingsoul_land
schedule function arcore:shootingsoul/shootingsoul_meteor 10
execute at @e[type=arrow,tag=shootingstar,nbt={inGround:1b},tag=!exploded] run summon tnt ~ ~ ~
execute as @e[type=arrow,tag=shootingstar,nbt={inGround:1b},tag=!exploded] run tag @s add exploded

execute as @e[type=arrow,tag=shootingstar,nbt={inGround:1b}] run scoreboard objectives add coords dummy
execute as @e[type=arrow,tag=shootingstar,nbt={inGround:1b}] run execute store result score posX coords run data get entity @s Pos[0]
execute as @e[type=arrow,tag=shootingstar,nbt={inGround:1b}] run execute store result score posY coords run data get entity @s Pos[1]
execute as @e[type=arrow,tag=shootingstar,nbt={inGround:1b}] run execute store result score posZ coords run data get entity @s Pos[2]


execute as @e[type=arrow,tag=shootingstar,nbt={inGround:1b},tag=!messageSent] run tellraw @a [{"text":"A shooting soul has landed at ","color":"light_purple"}, {"score":{"name":"posX","objective":"coords"},"color":"yellow"}, {"text":", ","color":"light_purple"}, {"score":{"name":"posY","objective":"coords"},"color":"yellow"}, {"text":", ","color":"light_purple"}, {"score":{"name":"posZ","objective":"coords"},"color":"yellow"}]
execute as @e[type=arrow,tag=shootingstar,nbt={inGround:1b},tag=!messageSent] run tag @s add messageSent
