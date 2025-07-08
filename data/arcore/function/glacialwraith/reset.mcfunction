function animated_java:glacial_wraith/remove/all
bossbar remove arcore:glacial_wraith
stopsound @a master arcore:glacialwraith.default
stopsound @a master arcore:glacialwraith.rage_mode
scoreboard objectives remove glacialwraithstage
scoreboard objectives remove minionsLeft
scoreboard players set @e[tag=root] glacialwraithstage 0
kill @e[type=armor_stand,tag=GlacialWraithStand]
kill @e[tag=minion]