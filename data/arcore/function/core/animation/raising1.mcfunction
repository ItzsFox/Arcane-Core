execute at @e[type=marker,tag=CoreSpawned] run place template arcore:arcane_well_raising_1 ~-3 ~ ~-5
playsound minecraft:block.chain.break master @a ~ ~ ~ .8 0.7
playsound minecraft:ambient.underwater.exit master @a ~ ~ ~ .8 0.7
execute at @e[type=marker,tag=CoreSpawned] run particle minecraft:crit ~-.5 ~7.5 ~.6 0 0 0 .2 30 force