
# Wake up before morning
execute if score #t day_time matches ..22999 run function eight_hours_sleep:sleep1h_actual

# Wake up at the morning
execute if score #t day_time matches 23000.. run time set 0
