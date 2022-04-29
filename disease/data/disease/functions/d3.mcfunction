tag @e[scores={disease_stage=50000..},tag=D2] add D3
tag @e[scores={disease_immunity=1000..}] remove D3
effect give @e[tag=D3] minecraft:blindness 1000000 0 true
effect give @e[tag=D3] minecraft:nausea 1000000 0 true
effect give @e[tag=D3] minecraft:wither 1000000 50 true
execute at @e[tag=D3] run tag @e[distance=..10,tag=I1] add D2
execute at @e[tag=D3] run scoreboard players add @e[sort=nearest,limit=2] disease_infect 4999
tag @e[tag=D3] remove D1
tag @e[tag=D3] remove D2
tag @e[tag=D3] remove I1
scoreboard players reset @e[tag=D3] disease_stage
execute at @e[tag=D3] run scoreboard players add @e disease_infect 100
execute at @e[tag=D3] run scoreboard players add @e[tag=I2] disease_infect 480
execute at @e[tag=D3] run tag @e[distance=..100,limit=10,sort=random] add I3
scoreboard players set @e[tag=D3,tag=!immune] disease_immunity 1000000
tag @e[tag=D3] add immune
execute at @e[tag=D3] run tellraw @a {"text":"The disease has claimed a life!","color":"dark_red"}
tag @e[tag=D3] remove D3