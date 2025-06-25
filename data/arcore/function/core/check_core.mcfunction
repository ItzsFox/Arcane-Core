execute at @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}] run place template arcore:arcane_well_lowering_0 ~-2 ~ ~-5
execute at @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}] run playsound minecraft:block.netherite_block.place master @a ~ ~ ~ 10 .5
execute at @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}] run kill @e[type=falling_block]
execute at @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}] as @a run tp @a ~ ~ ~4
execute as @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}] run tp @e[type=marker,tag=CoreSpawned] @s
execute align xyz run tp @e[type=marker,tag=CoreSpawned] ~1 ~ ~
execute at @e[type=marker,tag=CoreSpawned] run worldborder center ~ ~
execute as @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}] run worldborder set 10
execute at @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}] run setworldspawn ~ ~ ~
execute as @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}] run scoreboard players set @e[type=marker,tag=CoreSpawned] coreLevel 0
execute at @e[type=marker,tag=CoreSpawned] run summon minecraft:text_display ~ ~3.7 ~ { Tags:["TaskText"], text:'{"text":"??"}', billboard:"center", alignment:"center", shadow:true, background:0, line_width:200}
execute at @e[type=marker,tag=CoreSpawned] run summon armor_stand ~ ~1 ~ {Tags:["TaskItem"],Invisible:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:barrier",count:1b}]}

execute at @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}] run kill @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}]
