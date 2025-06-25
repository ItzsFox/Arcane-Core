execute as @e[tag=root] run function animated_java:glacial_wraith/animations/wand_attack/play
schedule function arcore:glacialwraith/castdelay 9t
execute if entity @e[tag=root,tag=isRage] run schedule function arcore:glacialwraith/ragecast 15t
execute if entity @e[tag=root,tag=isRage] run schedule function arcore:glacialwraith/castdelay 24t append