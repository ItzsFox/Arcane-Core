execute as @a[distance=..6,sort=nearest,limit=1] at @s unless entity @e[type=armor_stand,tag=pusher] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["pusher"],Small:1b}
ride @s mount @e[type=armor_stand,tag=pusher,sort=nearest,limit=1]

execute rotated as @e[tag=root,limit=1] positioned 0.0 0.0 0.0 positioned ^ ^.1 ^1 summon area_effect_cloud run data modify entity @e[tag=pusher,limit=1] Motion set from entity @s Pos
execute as @e[tag=pusher] run playsound minecraft:entity.vex.hurt master @a ~ ~ ~ 1 0
kill @e[type=area_effect_cloud]
execute at @e[tag=root,limit=1] run summon potion ~ ~1 ~ {Item:{id:splash_potion,components:{potion_contents:{custom_color:10329495,custom_effects:[{id:slowness,duration:100,amplifier:3,show_particles:0b}]}}}}
schedule function arcore:core/killpusher 15t