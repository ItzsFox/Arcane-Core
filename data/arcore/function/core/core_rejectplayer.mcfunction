execute as @a[distance=..2.5,sort=nearest,limit=1] at @s unless entity @e[type=armor_stand,tag=pusher] run summon armor_stand ~ ~-.5 ~ {Invisible:1b,Tags:["pusher"],Small:1b}
ride @s mount @e[type=armor_stand,tag=pusher,sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=pusher,distance=..2.5,sort=nearest,limit=1] at @s run data merge entity @s {Motion:[0.0d,.7d,.5d]}
effect give @s minecraft:wither 2 0 true
effect give @s minecraft:resistance 2 255 true

execute as @e[type=armor_stand,tag=pusher,distance=..2.5,sort=nearest,limit=1] at @s run playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 0.5 .8
execute at @e[type=armor_stand,tag=pusher,distance=..2.5,sort=nearest,limit=1] run particle minecraft:cloud ~ ~ ~ 0 0.1 0 .01 5 force
execute at @e[type=armor_stand,tag=pusher,distance=..2.5,sort=nearest,limit=1] run particle minecraft:trial_omen ~ ~ ~ 0 0.1 0 .01 5 force
schedule function arcore:core/killpusher 25t