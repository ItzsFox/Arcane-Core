execute at @e[type=marker,tag=CoreSpawned] run place template arcore:arcane_well_raising_6 ~-3 ~ ~-5
playsound minecraft:block.chain.break master @a ~ ~ ~ .8 0.7
playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 2 0.7
execute at @e[type=marker] run particle minecraft:falling_obsidian_tear ~-.5 ~6 ~.5 .2 0 0.2 1 500 force
execute at @e[type=marker,tag=CoreSpawned] run particle minecraft:crit ~-.5 ~7.5 ~.6 0 0 0 .2 30 force