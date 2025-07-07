execute as @e[tag=root] run tag @s add isDead
execute as @e[tag=root] run function animated_java:glacial_wraith/animations/death/play
schedule function arcore:glacialwraith/death_clear 200t