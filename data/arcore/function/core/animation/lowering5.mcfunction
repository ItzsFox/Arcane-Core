execute at @e[type=marker,tag=CoreSpawned] run place template arcore:arcane_well_lowering_5 ~-3 ~ ~-5
playsound minecraft:entity.generic.splash master @a ~ ~ ~ .8 0.7
execute at @e[type=marker,tag=CoreSpawned] run particle minecraft:bubble_pop ~-.5 ~1.2 ~.6 .2 0 0.2 .01 30 force
playsound minecraft:block.chain.break master @a ~ ~ ~ .8 0.7
execute at @e[type=marker,tag=CoreSpawned] run particle minecraft:crit ~-.5 ~7.5 ~.6 0 0 0 .2 30 force