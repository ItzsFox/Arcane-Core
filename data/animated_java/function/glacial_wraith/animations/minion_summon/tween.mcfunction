# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:glacial_wraith/animations/pause_all
tag @s add aj.glacial_wraith.animation.minion_summon.playing
$scoreboard players set @s aj.tween_duration $(duration)
$scoreboard players set @s aj.minion_summon.frame $(to_frame)
scoreboard players operation #this aj.i = @s aj.tween_duration
tag @s add aj.transforms_only
execute at @s run function animated_java:glacial_wraith/animations/minion_summon/zzz/apply_frame {frame: 0}
$execute at @s run function animated_java:glacial_wraith/animations/minion_summon/zzz/apply_frame {frame: $(to_frame)}
tag @s remove aj.transforms_only
execute on passengers store result entity @s interpolation_duration int 1 run scoreboard players get #this aj.i