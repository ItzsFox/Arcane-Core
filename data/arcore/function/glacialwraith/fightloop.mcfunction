# Setup for the Glacial Wraith fight
execute unless entity @e[tag=root] run execute at @e[type=marker,tag=glacialwraithspawn,limit=1] as @e[type=marker,tag=glacialwraithspawn,limit=1] run function arcore:glacialwraith/summon
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run bossbar add arcore:glacial_wraith "Glacial Wraith"
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run bossbar set arcore:glacial_wraith color blue
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run bossbar set arcore:glacial_wraith max 100
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run bossbar set arcore:glacial_wraith value 100
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run bossbar set arcore:glacial_wraith players @a
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run bossbar set arcore:glacial_wraith style notched_6
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run bossbar set arcore:glacial_wraith visible true
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run scoreboard objectives add glacialwraithstage dummy
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run scoreboard objectives add minionsLeft dummy
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run scoreboard objectives setdisplay sidebar minionsLeft
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run execute as @a at @a run playsound arcore:glacialwraith.default master @s ~ ~ ~ .5 1
execute unless entity @e[tag=root,scores={glacialwraithstage=0..}] run scoreboard players set @e[tag=root] glacialwraithstage 1
# Stage 1
execute if entity @e[tag=root,scores={glacialwraithstage=1}] run schedule function arcore:glacialwraith/minionsummon 5s append
# Stage 2
execute if entity @e[tag=root,scores={glacialwraithstage=2}] run bossbar set arcore:glacial_wraith value 83
execute if entity @e[tag=root,scores={glacialwraithstage=2}] run schedule function arcore:glacialwraith/minionsummon 3s append
execute if entity @e[tag=root,scores={glacialwraithstage=2}] run schedule function arcore:glacialwraith/wandattack 6s append
# Stage 3
execute if entity @e[tag=root,scores={glacialwraithstage=3}] run bossbar set arcore:glacial_wraith value 66
execute if entity @e[tag=root,scores={glacialwraithstage=3}] run schedule function arcore:glacialwraith/wandattack 3s append
execute if entity @e[tag=root,scores={glacialwraithstage=3}] run schedule function arcore:glacialwraith/minionsummon 5s append
execute if entity @e[tag=root,scores={glacialwraithstage=3}] run schedule function arcore:glacialwraith/wandattack 10s append
# Stage 4 Rage Mode
execute if entity @e[tag=root,scores={glacialwraithstage=4}] run bossbar set arcore:glacial_wraith value 50
execute if entity @e[tag=root,scores={glacialwraithstage=4}] run stopsound @a master arcore:glacialwraith.default
execute if entity @e[tag=root,scores={glacialwraithstage=4}] run function arcore:glacialwraith/rage_enter
execute if entity @e[tag=root,scores={glacialwraithstage=4}] run schedule function arcore:glacialwraith/rage_exit 10s append
execute if entity @e[tag=root,scores={glacialwraithstage=4}] run schedule function arcore:glacialwraith/minionsummon 11.1s append
execute if entity @e[tag=root,scores={glacialwraithstage=4}] run schedule function arcore:glacialwraith/wandattack 20s append
execute if entity @e[tag=root,scores={glacialwraithstage=4}] run schedule function arcore:glacialwraith/wandattack 40s append
# Stage 5
execute if entity @e[tag=root,scores={glacialwraithstage=5}] run bossbar set arcore:glacial_wraith value 33
execute if entity @e[tag=root,scores={glacialwraithstage=5}] run schedule function arcore:glacialwraith/wandattack 3s append
execute if entity @e[tag=root,scores={glacialwraithstage=5}] run schedule function arcore:glacialwraith/minionsummon 7s append
execute if entity @e[tag=root,scores={glacialwraithstage=5}] run schedule function arcore:glacialwraith/wandattack 15s append
execute if entity @e[tag=root,scores={glacialwraithstage=5}] run schedule function arcore:glacialwraith/wandattack 30s append
# Stage 6
execute if entity @e[tag=root,scores={glacialwraithstage=6}] run bossbar set arcore:glacial_wraith value 16
execute if entity @e[tag=root,scores={glacialwraithstage=6}] run schedule function arcore:glacialwraith/wandattack 3s append
execute if entity @e[tag=root,scores={glacialwraithstage=6}] run schedule function arcore:glacialwraith/minionsummon 6s append
execute if entity @e[tag=root,scores={glacialwraithstage=6}] run schedule function arcore:glacialwraith/wandattack 13s append
execute if entity @e[tag=root,scores={glacialwraithstage=5}] run schedule function arcore:glacialwraith/wandattack 20s append
execute if entity @e[tag=root,scores={glacialwraithstage=6}] run schedule function arcore:glacialwraith/minionsummon 40s append
execute if entity @e[tag=root,scores={glacialwraithstage=6}] run schedule function arcore:glacialwraith/wandattack 50s append
execute if entity @e[tag=root,scores={glacialwraithstage=6}] run schedule function arcore:glacialwraith/wandattack 60s append
# Stage 7 Defeat
execute if entity @e[tag=root,scores={glacialwraithstage=7}] run bossbar set arcore:glacial_wraith value 0
execute if entity @e[tag=root,scores={glacialwraithstage=7}] run stopsound @a master arcore:glacialwraith.rage_mode
execute if entity @e[tag=root,scores={glacialwraithstage=7}] run function arcore:glacialwraith/death










