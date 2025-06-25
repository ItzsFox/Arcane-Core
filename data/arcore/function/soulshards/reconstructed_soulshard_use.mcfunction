#adds tag
execute as @a unless predicate arcore:reconstructed_soulshard run tag @s remove reviving2
execute as @a unless predicate arcore:reconstructed_soulshard run tag @s remove checkedLevel2
#check level
execute as @a if predicate arcore:reconstructed_soulshard if entity @a[scores={level=0..19}] if entity @a[tag=!checkedLevel2] run title @s actionbar ["",{"text":"You need at least "},{"text":"20","bold":true,"color":"light_purple"},{"text":" levels of "},{"text":"XP","color":"yellow"},{"text":" to revive."}]
execute at @a if predicate arcore:reconstructed_soulshard if entity @a[scores={level=0..19}] if entity @a[tag=!checkedLevel2] run playsound block.trial_spawner.about_to_spawn_item master @a ~ ~ ~ 10 0.1
execute as @a if predicate arcore:reconstructed_soulshard if entity @a[scores={level=0..19}] run tag @s add checkedLevel2

execute as @a if predicate arcore:reconstructed_soulshard if entity @a[scores={level=20..}] run tag @s add reviving2
execute as @a if predicate arcore:reconstructed_soulshard if entity @a[scores={level=20..}] run tag @s add checkedLevel2


#increment or reset timer
execute as @a if predicate arcore:reconstructed_soulshard if entity @s[tag=reviving2] run scoreboard players add @s crouch_timer2 1
execute as @a[scores={crouch_timer2=1..49},tag=!reviving2] run stopsound @a master minecraft:block.trial_spawner.about_to_spawn_item
execute as @a unless predicate arcore:reconstructed_soulshard unless entity @s[tag=reviving2] run scoreboard players set @s crouch_timer2 0

#spawn particles
execute positioned as @a[tag=reviving2,limit=1] as @e[type=marker,tag=ressingPlayer2] at @s run tp @s ~ ~.04 ~ ~10 ~
execute at @e[type=marker,tag=ressingPlayer2] run particle dragon_breath ^ ^1.5 ^1.5
execute at @e[type=marker,tag=ressingPlayer2] rotated ~120 ~ run particle dragon_breath ^ ^2 ^1
execute at @e[type=marker,tag=ressingPlayer2] rotated ~240 ~ run particle dragon_breath ^ ^1 ^2

#spawn marker
execute at @a[scores={crouch_timer2=1}] run summon marker ~ ~ ~ {Tags:["ressingPlayer2"]}
execute as @a[scores={crouch_timer2=1}] run playsound minecraft:block.trial_spawner.about_to_spawn_item master @a ~ ~ ~ 100000 0.7

#reset
execute as @a[scores={crouch_timer2=1..49},tag=!reviving2] run scoreboard players set @s crouch_timer2 0
execute as @a[scores={crouch_timer2=0},tag=!reviving2] run kill @e[type=marker,tag=ressingPlayer2]

#effects on revive
execute as @a[scores={crouch_timer2=1..49},tag=reviving2] run effect give @s glowing 1 1 true
execute as @a[scores={crouch_timer2=1..49},tag=reviving2] run effect give @s slowness 1 255 true
execute as @a[scores={crouch_timer2=1..49},tag=reviving2] run effect give @s blindness 2 0 true

#during and post revive
execute as @a[scores={crouch_timer2=10},tag=reviving2] run xp add @s -4 levels
execute as @a[scores={crouch_timer2=20},tag=reviving2] run xp add @s -4 levels
execute as @a[scores={crouch_timer2=30},tag=reviving2] run xp add @s -4 levels
execute as @a[scores={crouch_timer2=40},tag=reviving2] run xp add @s -4 levels
execute as @a[scores={crouch_timer2=50..}] run tag @s add finishedreviving
execute as @a[tag=finishedreviving] run effect give @s resistance 1 255
execute as @a[tag=finishedreviving] run item replace entity @a[tag=finishedreviving] weapon.mainhand with air
execute as @a[tag=finishedreviving] run xp add @s -4 levels
execute at @a[tag=finishedreviving] run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 2 1000 force
execute at @a[tag=finishedreviving] run particle minecraft:dragon_breath ~ ~ ~ 1 1 1 1.9 1000 force
execute as @a[tag=finishedreviving] run kill @e[type=marker,tag=ressingPlayer2]
execute as @a[tag=finishedreviving] run playsound item.totem.use master @a ~ ~ ~ 10 0.3
execute as @a[tag=finishedreviving] run scoreboard players set @p[scores={deaths=2}] deaths 3
execute as @a[tag=finishedreviving] run function arcore:main/revive

#reset
execute as @a[tag=finishedreviving] run scoreboard players set @a[tag=finishedreviving] crouch_timer2 0
execute as @a[tag=finishedreviving] run tag @a[tag=finishedreviving] remove finishedreviving

