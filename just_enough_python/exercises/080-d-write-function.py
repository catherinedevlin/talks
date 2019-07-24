# Can you find and fix the bug?

from random import randint

def assign_jerseys(team):
    roster = {}
    for player in players:
        roster[player] = randint(1, 99)
    return roster

players = ['Twi', 'Dottie', 'Thelma']
jersey_numbers = assign_jerseys(team)
print(jersey_numbers)
