# Let's try a different function from a different module, 
# and give the players an imaginary number of runs for 
# the season.
# 
# The function is called "randint", and it's in the "random"
# module.  The statement to impo

from        import 

players = ['Roni', 'Tetz', 'Joyce']

for player in players:
    runs = randint(0, 6)
    print(player, ' scored ', runs, ' runs')
