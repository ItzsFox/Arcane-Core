function arcore:glacialwraith/reset

execute at @e[type=marker,tag=glacialwraithspawn,limit=1] as @e[type=marker,tag=glacialwraithspawn,limit=1] run function arcore:glacialwraith/summon
bossbar add arcore:glacial_wraith "Glacial Wraith"
bossbar set arcore:glacial_wraith color blue
bossbar set arcore:glacial_wraith max 100
bossbar set arcore:glacial_wraith value 100
bossbar set arcore:glacial_wraith players @a
bossbar set arcore:glacial_wraith style notched_6
bossbar set arcore:glacial_wraith visible true
execute as @a at @a run playsound arcore:glacialwraith.default master @s ~ ~ ~ .5 1
schedule function arcore:glacialwraith/minionsummon 5s
schedule function arcore:glacialwraith/minionsummon 10s append