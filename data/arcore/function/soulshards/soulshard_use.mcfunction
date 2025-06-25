# --- Set Up Dead-Online Check ---
# Clear the tag from everyone first
tag @a remove dead_online
# Tag any player with deaths=2 (their soul is spawned) as "dead_online"
execute if entity @a[scores={deaths=2}] run tag @a add dead_online

# --- Remove reviving/check tags if missing soul shard ---
execute as @a unless predicate arcore:soulshard run tag @s remove reviving
execute as @a unless predicate arcore:soulshard run tag @s remove checkedLevel

# --- XP Level Check & Tagging ---
# If the player has less than 5 XP levels and hasn’t been checked yet,
# send a title and play a warning sound
execute as @a if predicate arcore:soulshard if entity @a[scores={level=0..4}] if entity @a[tag=!checkedLevel] run title @s actionbar ["",{"text":"You need at least "},{"text":"5","bold":true,"color":"light_purple"},{"text":" levels of "},{"text":"XP","color":"yellow"},{"text":" to revive."}]
execute at @a if predicate arcore:soulshard if entity @a[scores={level=0..4}] if entity @a[tag=!checkedLevel] run playsound block.trial_spawner.about_to_spawn_item master @a ~ ~ ~ 10 0
# Mark them as checked so we don’t spam the message
execute as @a if predicate arcore:soulshard if entity @a[scores={level=0..4}] run tag @s add checkedLevel

# --- Begin Revive Process (only if player has >=5 XP levels) ---
execute as @a if predicate arcore:soulshard if entity @a[scores={level=5..}] run tag @s add reviving
execute as @a if predicate arcore:soulshard if entity @a[scores={level=5..}] run tag @s add checkedLevel

# --- Prevent Revive if No Dead Player is Online ---
# If no one is tagged as dead_online, cancel the revive process:
execute as @a if predicate arcore:soulshard unless entity @a[tag=dead_online] if entity @a[tag=checkedLevel] run title @s actionbar ["",{"text":"There's no soul to revive.","color":"light_purple"}]
execute as @a if predicate arcore:soulshard unless entity @a[tag=dead_online] run tag @s remove reviving
execute as @a if predicate arcore:soulshard unless entity @a[tag=dead_online] run scoreboard players set @s crouch_timer 0


# --- Timer Increment or Reset ---
execute as @a if predicate arcore:soulshard if entity @s[tag=reviving] run scoreboard players add @s crouch_timer 1
execute as @a[scores={crouch_timer=1..49},tag=!reviving] run stopsound @a master minecraft:block.trial_spawner.about_to_spawn_item
execute as @a unless predicate arcore:soulshard unless entity @s[tag=reviving] run scoreboard players set @s crouch_timer 0

# --- Spawn Particles for Reviving ---
execute positioned as @a[tag=reviving,limit=1] as @e[type=marker,tag=ressingPlayer] at @s run tp @s ~ ~0.04 ~ ~10 ~
execute at @e[type=marker,tag=ressingPlayer] run particle dragon_breath ^ ^1 ^1
execute at @e[type=marker,tag=ressingPlayer] rotated ~120 ~ run particle dragon_breath ^ ^1.5 ^.5
execute at @e[type=marker,tag=ressingPlayer] rotated ~240 ~ run particle dragon_breath ^ ^.5 ^1.5

# --- Spawn Marker and Play Initial Sound ---
execute at @a[scores={crouch_timer=1}] run summon marker ~ ~ ~ {Tags:["ressingPlayer"]}
execute as @a[scores={crouch_timer=1}] run playsound minecraft:block.trial_spawner.about_to_spawn_item master @a ~ ~ ~ 100000 0.9

# --- Reset Timer When Not Reviving ---
execute as @a[scores={crouch_timer=1..49},tag=!reviving] run scoreboard players set @s crouch_timer 0
execute as @a[scores={crouch_timer=0},tag=!reviving] run kill @e[type=marker,tag=ressingPlayer]

# --- Effects During Revive ---
execute as @a[scores={crouch_timer=1..49},tag=reviving] run effect give @s glowing 1 1 true
execute as @a[scores={crouch_timer=1..49},tag=reviving] run effect give @s slowness 1 255 true
execute as @a[scores={crouch_timer=1..49},tag=reviving] run effect give @s blindness 2 0 true

# --- During and Post Revive Actions ---
execute as @a[scores={crouch_timer=1},tag=reviving] run tellraw @s ["",{"text":"","color":"#da53ec","extra":[{"selector":"@p[scores={deaths=2}]"},{"text":" is being revived by ","extra":[{"selector":"@s"}]}]}]
execute as @a[scores={crouch_timer=10},tag=reviving] run xp add @s -1 levels
execute as @a[scores={crouch_timer=20},tag=reviving] run xp add @s -1 levels
execute as @a[scores={crouch_timer=30},tag=reviving] run xp add @s -1 levels
execute as @a[scores={crouch_timer=40},tag=reviving] run xp add @s -1 levels
execute as @a[scores={crouch_timer=50..}] run tag @s add finishedreviving

# --- Finalize the Revive ---
execute as @a[tag=finishedreviving] run effect give @s resistance 1 255
execute as @a[tag=finishedreviving] run item replace entity @a[tag=finishedreviving] weapon.mainhand with air
execute as @a[tag=finishedreviving] run xp add @s -1 levels
execute at @a[tag=finishedreviving] run particle minecraft:flash ~ ~ ~ 1 1 1 2 100 force
execute at @a[tag=finishedreviving] run particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 2 1000 force
execute as @a[tag=finishedreviving] run kill @e[type=marker,tag=ressingPlayer]
execute as @a[tag=finishedreviving] run playsound item.totem.use master @a ~ ~ ~ 10 0.5
execute as @a[tag=finishedreviving] run scoreboard players set @p[scores={deaths=2}] deaths 3
execute as @a[tag=finishedreviving] run function arcore:main/revive

# --- Reset After Revive ---
execute as @a[tag=finishedreviving] run scoreboard players set @a[tag=finishedreviving] crouch_timer 0
execute as @a[tag=finishedreviving] run tag @a[tag=finishedreviving] remove finishedreviving
