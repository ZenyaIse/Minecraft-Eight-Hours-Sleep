
# Wake up before morning
execute if score #t day_time matches ..21999 run function eight_hours_sleep:sleep2h_actual

# Wake up at the morning
execute if score #t day_time matches 22000.. run time set 0
