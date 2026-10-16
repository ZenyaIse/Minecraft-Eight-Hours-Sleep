
# Wake up before morning
execute if score #t day_time matches ..20999 run function eight_hours_sleep:sleep3h_actual

# Wake up at the morning
execute if score #t day_time matches 21000.. run time set 0
