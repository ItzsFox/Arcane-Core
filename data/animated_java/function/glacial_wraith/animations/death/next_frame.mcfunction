# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
execute if score @s aj.death.frame matches 51.. run scoreboard players set @s aj.death.frame 1
data remove storage aj:temp args
execute store result storage aj:temp args.frame int 1 run scoreboard players get @s aj.death.frame
execute at @s run function animated_java:glacial_wraith/animations/death/zzz/apply_frame with storage aj:temp args
scoreboard players add @s aj.death.frame 1