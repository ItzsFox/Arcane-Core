rotate @s facing ~ ~ ~
execute at @s run summon armor_stand ~ ~ ~ {Tags:["GlacialWraithStand"],Small:1b,Invisible:1b,Marker:1b}
execute at @s run function animated_java:glacial_wraith/summon {args:0}
execute at @s run playsound entity.illusioner.mirror_move master @a ~ ~ ~ 5 2
particle minecraft:snowflake ~ ~1 ~ .5 .5 .5 .01 500 force
