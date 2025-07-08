execute as @e[tag=root] run tag @s remove enter_rage_mode
execute at @a as @a run playsound arcore:glacialwraith.rage_mode master @a ~ ~ ~ .5 1
bossbar set arcore:glacial_wraith color red