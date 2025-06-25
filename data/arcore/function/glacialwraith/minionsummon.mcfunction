execute as @e[tag=root] run function animated_java:glacial_wraith/animations/minion_summon/play
schedule function arcore:glacialwraith/miniondelay 45t
execute if entity @e[tag=root,tag=isRage] run schedule function arcore:glacialwraith/rageminion 60t
execute if entity @e[tag=root,tag=isRage] run schedule function arcore:glacialwraith/miniondelay 105t append