# Made by information
tellraw @a[tag=!test_v1_18_2] {"text":"\n\nA test made by Revengist\nVersion: 1.18.2\nDisease Simulation Initiated\n\n","color":"gold"}
tag @a[tag=!test_v1_18_2] add test_v1_18_2
scoreboard objectives add disease_immune dummy
scoreboard objectives add disease_infect dummy
scoreboard objectives add disease_stage dummy
team add developer {"text":"Developer","color":"aqua"}
team modify developer color gold
team modify developer collisionRule never
team modify developer deathMessageVisibility hideForOtherTeams
team modify developer friendlyFire false
team modify developer nametagVisibility hideForOtherTeams
team modify developer prefix [{"text":" [","color":"gold"},{"text":"D","color":"aqua"},{"text":"E","color":"green"},{"text":"V","color":"aqua"},{"text":"] ","color":"gold"}]
team modify developer suffix [{"text":" [","color":"gold"},{"text":"D","color":"aqua"},{"text":"E","color":"green"},{"text":"V","color":"aqua"},{"text":"] ","color":"gold"}]
team modify developer seeFriendlyInvisibles true