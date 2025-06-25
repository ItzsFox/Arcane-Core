execute at @e[type=marker,tag=CoreSpawned] run place template arcore:arcane_well_raising_0 ~-3 ~ ~-5
playsound minecraft:item.crossbow.loading_middle master @a ~ ~ ~ 1 0.7
playsound minecraft:block.chain.break master @a ~ ~ ~ .8 0.7
execute at @e[type=marker,tag=CoreSpawned] run particle minecraft:crit ~-.5 ~7.5 ~.6 0 0 0 .2 30 force