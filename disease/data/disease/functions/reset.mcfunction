scoreboard players set @e disease_immunity 0
scoreboard players set @e disease_infect 0
scoreboard players set @e disease_stage 0
tag @e remove immune
tag @e remove D1
tag @e remove D2
tag @e remove D3
tag @e remove I1
tag @e remove I2
tag @e remove I3
tag @e remove Vax
effect clear @e
tag @e[sort=random,limit=1] add I2
effect give @e[tag=I2] speed 1000000 4 true
tag @e remove test_v1_18_2
function disease:load