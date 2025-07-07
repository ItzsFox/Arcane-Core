execute as @e[tag=root] run function animated_java:glacial_wraith/animations/minion_summon/play
execute at @e[tag=root] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 5 0
schedule function arcore:glacialwraith/miniondelay 45t
execute if entity @e[tag=root,tag=isRage] run schedule function arcore:glacialwraith/rageminion 60t
execute if entity @e[tag=root,tag=isRage] run schedule function arcore:glacialwraith/miniondelay 105t append