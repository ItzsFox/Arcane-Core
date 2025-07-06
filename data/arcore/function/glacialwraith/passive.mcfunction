execute at @e[tag=root] as @e[limit=1,tag=!root,type=!marker,tag=!GlacialWraithStand,type=!item_display,type=!text_display,type=!item,type=!armor_stand,sort=nearest,distance=..6,type=!bat] run function arcore:glacialwraith/pushentity
execute at @e[tag=root] as @a[limit=1,sort=nearest,distance=..6] run function arcore:glacialwraith/pushplayer
