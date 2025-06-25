# Sound effect for when item is thrown out of the core
execute at @e[type=marker,tag=CoreSpawned] run playsound minecraft:block.vault.eject_item master @a ~ ~ ~ 1 1

#Level 0 Reward
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=1}] at @e[type=marker,tag=CoreSpawned,scores={coreLevel=1}] run summon item ~-.5 ~1 ~.6 {Item:{id:"minecraft:experience_bottle",count:3b},Motion:[0d,.6d,0.2d],PickupDelay:20s,Age:-32768s}

#Level 1 Reward
execute if entity @e[type=marker,tag=CoreSpawned,scores={coreLevel=2}] at @e[type=marker,tag=CoreSpawned,scores={coreLevel=2}] run summon item ~-.5 ~1 ~.6 {Item:{id:"minecraft:wheat_seeds",count:1b},Motion:[0d,.6d,0.2d],PickupDelay:20s,Age:-32768s}
