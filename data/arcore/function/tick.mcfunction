execute at @e[tag=snow] run fill ~ ~ ~ ~ ~ ~ air replace powder_snow
kill @e[tag=snow]

execute at @e[type=arrow,tag=shootingstar] run summon firework_rocket ~ ~ ~ {Life:1,FireworksItem:{id:firework_rocket,components:{fireworks:{explosions:[{shape:burst,colors:[I;16383998]}]}}}}
execute at @e[type=arrow,tag=shootingstar,nbt={inGround:1b},tag=!exploded] run function arcore:shootingsoul/shootingsoul_land
execute at @e[type=armor_stand,tag=CoreStand,nbt={OnGround:1b}] run function arcore:core/check_core

execute if entity @e[type=armor_stand,tag=GlacialWraithStand] run function arcore:glacialwraith/lockonplayer

function arcore:levels/levelup
function arcore:levels/levels
function arcore:main/death
function arcore:soulshards/reconstructed_soulshard_use
function arcore:soulshards/soulshard_use
function arcore:glacialstaff/glacial_staff_use
function arcore:soulguardian/soulguardian_takeitem
function arcore:core/core_task
function arcore:core/core_start
function arcore:glacialwraith/passive