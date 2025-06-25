### This function is called every tick to check for the core's task completion

# Reject player if they jump in the core
execute at @e[type=marker,tag=CoreSpawned] as @a[distance=..2.5,sort=nearest,limit=1] run function arcore:core/core_rejectplayer

# Prevent griefing the core
function arcore:core/anti_grief/detect_grief

# Update the task text display
execute at @e[type=marker,tag=CoreSpawned] run execute as @e[type=marker,tag=CoreSpawned] at @s run scoreboard players operation @e[type=minecraft:text_display,tag=TaskText,limit=1,sort=nearest] correctItems = @s correctItems
execute at @e[type=marker,tag=CoreSpawned] run data merge entity @e[type=minecraft:text_display,tag=TaskText,limit=1,sort=nearest] {text:'{"score":{"name":"*","objective":"correctItems"}}'}
execute as @e[tag=TaskItem] at @s run tp @s ~ ~ ~ facing entity @p eyes

# Level 0
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=0}] unless entity @e[type=marker,tag=HasTask,tag=CoreSpawned,scores={coreLevel=0}] run data merge entity @e[type=armor_stand,tag=TaskItem,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"minecraft:dirt",count:1b}]}
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=0}] unless entity @e[type=marker,tag=HasTask,tag=CoreSpawned,scores={coreLevel=0}] run execute as @e[type=marker,tag=CoreSpawned,scores={coreLevel=0}] at @s run scoreboard players set @s correctItems 15
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=0}] unless entity @e[type=marker,tag=HasTask,tag=CoreSpawned,scores={coreLevel=0}] run execute as @e[type=marker,tag=CoreSpawned,scores={coreLevel=0}] at @s run tag @s add HasTask

execute as @e[type=marker,tag=CoreSpawned,scores={coreLevel=0}] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dirt"}},distance=..2.5,sort=nearest,limit=1] run function arcore:core/core_itemremove
execute at @e[type=marker,tag=CoreSpawned,scores={coreLevel=0}] as @e[type=minecraft:item,distance=..2.5,sort=nearest,limit=1] unless data entity @s {Item:{id:"minecraft:dirt"}} run function arcore:core/core_rejectitem

execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=0,correctItems=0}] run function arcore:core/core_animation
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=0,correctItems=0}] run function arcore:core/core_taskcomplete


# Level 1
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=1}] unless entity @e[type=marker,tag=HasTask,tag=CoreSpawned,scores={coreLevel=1}] run data merge entity @e[type=armor_stand,tag=TaskItem,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",count:1b}]}
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=1}] unless entity @e[type=marker,tag=HasTask,tag=CoreSpawned,scores={coreLevel=1}] run execute as @e[type=marker,tag=CoreSpawned,scores={coreLevel=1}] at @s run scoreboard players set @s correctItems 128
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=1}] unless entity @e[type=marker,tag=HasTask,tag=CoreSpawned,scores={coreLevel=1}] run execute as @e[type=marker,tag=CoreSpawned,scores={coreLevel=1}] at @s run tag @s add HasTask

execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=1}] as @e[type=marker,tag=CoreSpawned,scores={coreLevel=1}] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:cobblestone"}},distance=..2.5,sort=nearest,limit=1] run function arcore:core/core_itemremove
execute at @e[type=marker,tag=CoreSpawned,scores={coreLevel=1}] as @e[type=minecraft:item,distance=..2.5,sort=nearest,limit=1] unless data entity @s {Item:{id:"minecraft:cobblestone"}} run function arcore:core/core_rejectitem


execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=1,correctItems=0}] run function arcore:core/core_animation
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=1,correctItems=0}] run function arcore:core/core_taskcomplete

# Level 2
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=2}] unless entity @e[type=marker,tag=HasTask,tag=CoreSpawned,scores={coreLevel=2}] run data merge entity @e[type=armor_stand,tag=TaskItem,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"minecraft:bread",count:1b}]}
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=2}] unless entity @e[type=marker,tag=HasTask,tag=CoreSpawned,scores={coreLevel=2}] run execute as @e[type=marker,tag=CoreSpawned,scores={coreLevel=2}] at @s run scoreboard players set @s correctItems 32
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=2}] unless entity @e[type=marker,tag=HasTask,tag=CoreSpawned,scores={coreLevel=2}] run execute as @e[type=marker,tag=CoreSpawned,scores={coreLevel=2}] at @s run tag @s add HasTask

execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=2}] as @e[type=marker,tag=CoreSpawned,scores={coreLevel=2}] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:bread"}},distance=..2.5,sort=nearest,limit=1] run function arcore:core/core_itemremove
execute at @e[type=marker,tag=CoreSpawned,scores={coreLevel=2}] as @e[type=minecraft:item,distance=..2.5,sort=nearest,limit=1] unless data entity @s {Item:{id:"minecraft:bread"}} run function arcore:core/core_rejectitem


execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=2,correctItems=0}] run function arcore:core/core_animation
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=2,correctItems=0}] run function arcore:core/core_taskcomplete


