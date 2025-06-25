execute as @e[type=minecraft:item,distance=..2.5,sort=nearest,limit=1] run data merge entity @s {Motion:[0.0d,0.5d,0.3d]}
execute as @e[type=minecraft:marker,tag=CoreSpawned] run playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 0.5 .8
execute at @e[type=minecraft:item,distance=..2.5,sort=nearest,limit=1] run particle minecraft:cloud ~ ~ ~ 0 0.1 0 .01 5 force
