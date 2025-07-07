execute as @e[tag=root] run function animated_java:glacial_wraith/animations/rage_mode_exit/play
execute at @e[tag=root] run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 0
schedule function arcore:glacialwraith/remove_rage_tag 30t
execute as @e[tag=root] run tag @s add isRage

