
execute store result score #d game_difficulty run difficulty

execute if score #d game_difficulty matches 3 run function eight_hours_sleep:sleep1h
execute if score #d game_difficulty matches 2 run function eight_hours_sleep:sleep2h
execute if score #d game_difficulty matches ..1 run function eight_hours_sleep:sleep3h
