execute at @e[type=marker,tag=CoreSpawned] run place template arcore:arcane_well_lowering_6 ~-3 ~ ~-5
playsound minecraft:block.chain.break master @a ~ ~ ~ .8 0.7
execute at @e[type=marker,tag=CoreSpawned] run particle minecraft:crit ~-.5 ~7.5 ~.6 0 0 0 .2 30 force
