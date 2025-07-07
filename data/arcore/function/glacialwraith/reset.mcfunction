function animated_java:glacial_wraith/remove/all
bossbar remove arcore:glacial_wraith
stopsound @a master arcore:glacialwraith.default
stopsound @a master arcore:glacialwraith.rage_mode
kill @e[type=armor_stand,tag=GlacialWraithStand]
kill @e[tag=minion]