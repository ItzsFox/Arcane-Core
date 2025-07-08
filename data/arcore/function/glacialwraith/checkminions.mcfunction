# Reset the score to 0 every tick
scoreboard players set #minions minionsLeft 0

# Then count how many are currently alive by adding +1 for each
execute as @e[tag=minion] run scoreboard players add #minions minionsLeft 1
execute as @a run scoreboard players operation @s minionsLeft = #minions minionsLeft

# Stage 1
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=1},tag=minionsSpawned] as @e[tag=root] run schedule function arcore:glacialwraith/remove_minions_tag 1t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=1},tag=minionsSpawned] run schedule function arcore:glacialwraith/advance_stage 2t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=1},tag=minionsSpawned] run schedule function arcore:glacialwraith/fightloop 3t append
# Stage 2
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=2},tag=minionsSpawned] as @e[tag=root] run schedule function arcore:glacialwraith/remove_minions_tag 1t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=2},tag=minionsSpawned] run schedule function arcore:glacialwraith/advance_stage 2t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=2},tag=minionsSpawned] run schedule function arcore:glacialwraith/fightloop 3t append
# Stage 3
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=3},tag=minionsSpawned] as @e[tag=root] run schedule function arcore:glacialwraith/remove_minions_tag 1t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=3},tag=minionsSpawned] run schedule function arcore:glacialwraith/advance_stage 2t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=3},tag=minionsSpawned] run schedule function arcore:glacialwraith/fightloop 3t append
# Stage 4
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=4},tag=minionsSpawned] as @e[tag=root] run schedule function arcore:glacialwraith/remove_minions_tag 1t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=4},tag=minionsSpawned] run schedule function arcore:glacialwraith/advance_stage 2t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=4},tag=minionsSpawned] run schedule function arcore:glacialwraith/fightloop 3t append
# Stage 5
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=5},tag=minionsSpawned] as @e[tag=root] run schedule function arcore:glacialwraith/remove_minions_tag 1t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=5},tag=minionsSpawned] run schedule function arcore:glacialwraith/advance_stage 2t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=5},tag=minionsSpawned] run schedule function arcore:glacialwraith/fightloop 3t append
# Stage 6
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=6},tag=minionsSpawned] as @e[tag=root] run schedule function arcore:glacialwraith/remove_minions_tag 1t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=6},tag=minionsSpawned] run schedule function arcore:glacialwraith/advance_stage 2t append
execute if score #minions minionsLeft matches 0 if entity @e[tag=root,scores={glacialwraithstage=6},tag=minionsSpawned] run schedule function arcore:glacialwraith/fightloop 3t append

