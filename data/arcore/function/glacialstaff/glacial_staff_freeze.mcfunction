execute at @e[tag=GlacialProjectile,limit=1,sort=nearest] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 2
execute at @e[tag=GlacialProjectile,limit=1,sort=nearest] run particle minecraft:campfire_cosy_smoke ~ ~10 ~ 1.5 1 1.5 0.001 1000 force

execute at @e[tag=GlacialProjectile,limit=1,sort=nearest] as @a[distance=..3.5,tag=!frozen] run advancement revoke @s only arcore:frostbite

execute at @e[tag=GlacialProjectile,limit=1,sort=nearest] as @e[distance=..3.5,type=!armor_stand,type=!item_display,tag=!frozen] run tag @s add frozen

execute as @e[tag=frozen,type=!player] run effect give @s minecraft:wither 15 0 true
schedule function arcore:glacialstaff/glacial_staff_unfreeze 15s

kill @e[tag=GlacialProjectile,limit=1,sort=nearest]