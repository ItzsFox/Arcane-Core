execute as @a[distance=..6,sort=nearest,limit=1] at @s unless entity @e[type=armor_stand,tag=pusher] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["pusher"],Small:1b}
ride @s mount @e[type=armor_stand,tag=pusher,sort=nearest,limit=1]
execute as @e[type=armor_stand,tag=pusher,distance=..6,sort=nearest,limit=1] at @s run data merge entity @s {Motion:[0.0d,.7d,.5d]}
execute as @e[tag=!root,type=!marker,tag=!GlacialWraithStand,type=!item_display,type=!text_display,type=!item,type=!armor_stand,sort=nearest,distance=..6,type=!bat,limit=1] unless entity @e[type=armor_stand,tag=pusher] at @s run data merge entity @s {Motion:[0.0d,.7d,.5d]}



schedule function arcore:core/killpusher 25t