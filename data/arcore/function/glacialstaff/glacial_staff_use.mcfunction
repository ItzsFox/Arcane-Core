# Glacial staff Use Function
execute as @a unless predicate arcore:glacial_staff run tag @s remove casting
execute as @a if predicate arcore:glacial_staff run tag @s add casting

# Reset the timer if the player is not casting and cast shot
execute as @a if predicate arcore:glacial_staff if entity @s[tag=casting] run scoreboard players add @s glacialtimer 1
execute as @a[scores={glacialtimer=1..49},tag=!casting] run stopsound @a master minecraft:block.trial_spawner.about_to_spawn_item
execute as @a unless predicate arcore:glacial_staff if entity @s[scores={glacialtimer=70..109}] run function arcore:glacialstaff/glacial_staff_cast
execute as @a unless predicate arcore:glacial_staff unless entity @s[tag=casting] run scoreboard players set @s glacialtimer 0

# Casting process
execute as @a[scores={glacialtimer=0..9},tag=casting] run title @s actionbar [{"text":"⚠ ","color":"yellow","bold":true},{"text":"Hold to charge — release on ","color":"white"},{"text":"GREEN","color":"green","bold":true},{"text":" to fire!","color":"white"}]
execute as @a[scores={glacialtimer=10..29},tag=casting] run title @s actionbar [{"text":"█","color":"red"}]
execute at @a[scores={glacialtimer=10},tag=casting] run playsound block.note_block.harp master @a ~ ~ ~ 10 1
execute as @a[scores={glacialtimer=30..49},tag=casting] run title @s actionbar [{"text":"██","color":"gold"}]
execute at @a[scores={glacialtimer=30},tag=casting] run playsound block.note_block.harp master @a ~ ~ ~ 10 1.4
execute as @a[scores={glacialtimer=50..69},tag=casting] run title @s actionbar [{"text":"███","color":"yellow"}]
execute at @a[scores={glacialtimer=50},tag=casting] run playsound block.note_block.harp master @a ~ ~ ~ 10 1.8
execute as @a[scores={glacialtimer=70..109},tag=casting] run title @s actionbar [{"text":"████","color":"green"}]
execute as @a[scores={glacialtimer=70},tag=casting] run item modify entity @s weapon.mainhand [{function:"minecraft:set_damage",damage:-0.1,add:true}]
execute at @a[scores={glacialtimer=70},tag=casting] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 2
execute at @a[scores={glacialtimer=70..109},tag=casting] run playsound block.note_block.harp master @a ~ ~ ~ 10 2
execute as @a[scores={glacialtimer=110..},tag=casting] run title @s actionbar [{"text":"!!! OVERCHARGED !!!","color":"dark_red","bold":true}]
execute at @a[scores={glacialtimer=110},tag=casting] run playsound block.redstone_torch.burnout master @a ~ ~ ~ 10 1.5
execute at @a[scores={glacialtimer=110},tag=casting] run playsound block.note_block.didgeridoo master @a ~ ~ ~ 10 0
execute at @a[scores={glacialtimer=110},tag=casting] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 2

# Projectile flying
execute at @e[tag=GlacialProjectile,limit=1,sort=nearest] run particle snowflake ~ ~2 ~ 0.1 0.1 0.1 0.01 5 force

# Send event to freezing function
execute as @e[tag=GlacialProjectile,limit=1,sort=nearest] run scoreboard players add @s borntimer 1
execute as @e[tag=GlacialProjectile,limit=1,sort=nearest] at @p if entity @s[nbt={OnGround:1b},scores={borntimer=10..}] run function arcore:glacialstaff/glacial_staff_freeze

# Freezing 
execute at @e[tag=frozen] run particle snowflake ~ ~2 ~ 0.1 0.1 0.1 0.01 1 force
execute as @e[tag=frozen] run effect give @s minecraft:slowness 1 255 true
execute as @e[tag=frozen] run effect give @s minecraft:mining_fatigue 1 255 true





