execute at @e[tag=D1] run scoreboard players add @e[distance=..5] disease_infect 1
execute at @e[tag=D2] run scoreboard players add @e[distance=..5] disease_infect 5
execute at @e[tag=I1] run execute as @e[tag=I1,distance=.5] run scoreboard players add @e[distance=..5] disease_infect 1
tag @e[scores={disease_infect=5000..}] add I1
execute at @e[scores={disease_infect=5000..}] run tellraw @a {"text":"A new entity has been infected!","color":"dark_red"}
scoreboard players set @e[tag=D1] disease_infect 0
scoreboard players set @e[tag=D2] disease_infect 0
execute at @e[tag=D2] run scoreboard players add @e[distance=..7] disease_infect 1
execute at @e[tag=D2] run scoreboard players add @e[distance=..7] disease_stage 1
scoreboard players set @e[tag=I1] disease_infect 0
execute at @e[tag=D1] run tag @e[distance=..2] add I2
scoreboard players add @e[tag=I2] disease_infect 20
execute at @e[tag=D1] run scoreboard players add @e[tag=I3,distance=..5] disease_infect 10
scoreboard players add @e[tag=I1] disease_stage 1
tag @e[scores={disease_stage=10000..}] add D1
tag @e[tag=D1] remove I1
scoreboard players add @e[sort=random,limit=1] disease_infect 1
scoreboard players add @e[sort=random,limit=3,scores={disease_infect=4000..}] disease_infect 50
tag @e[tag=D1] remove I2
tag @e[tag=D2] remove I2
tag @e[tag=D2] remove I1
tag @e[tag=D2] remove D1
tag @e[scores={disease_stage=30000..},tag=D1] add D2
execute at @e[tag=D1] run scoreboard players add @e[tag=D1,distance=..5] disease_stage 1
scoreboard players remove @e[tag=immune] disease_immunity 1
tag @e[scores={disease_immunity=0}] remove immune
execute at @e[tag=D2] run scoreboard players add @e[tag=D1,distance=..5] disease_stage 2
execute at @e[tag=D2] run scoreboard players add @e[tag=D2,distance=..5] disease_stage 1
tag @e[scores={disease_stage=50000..}] add D3
tag @e[tag=D3] remove I3
execute at @e[tag=I3] run scoreboard players add @e[distance=..10] disease_stage 5
scoreboard players add @e[tag=I3,sort=random,limit=5] disease_infect 5
function disease:d3
effect give @e[tag=D2] minecraft:glowing 1000000 0 true
effect give @e[tag=D1] minecraft:weakness 1000000 0 true
effect give @e[tag=D2] minecraft:weakness 1000000 0 true
team join developer Revengistium
scoreboard players set @e[tag=Vax] disease_infect 0
scoreboard players set @e[tag=Vax] disease_stage 0
scoreboard players set @e[tag=Vax] disease_immunity 0