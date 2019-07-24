
class Team:

    def __init__(self, city, name):

        self.city = city 
        self.name = name 
        self.roster = [] 

    def draft(self, player):

        # ".append tacks an item onto a list.  Finish!"
        ___________.append(player)

    def __str__(self):
        "A 'magic method' called when we print!"

        return ____.city + " " + ____.name 

chicks = Team('Grand Rapids', 'Chicks')
print("Welcome " + chicks + "!")

chicks.draft('Tia')
print(chicks.roster)
