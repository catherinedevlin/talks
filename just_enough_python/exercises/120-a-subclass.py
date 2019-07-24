rom random import randint

class Player:

    def __init__(self, name):
    "The `constructor runs when we create a new thing"

        self.name = name
        self.jersey = randint(1, 99)

class Pitcher(Player):

    def __init__(self, name):

        super().__init__(name)
        self.strikeouts = randint(0, 20)

tia = Player('Tia')
print(tia.name)
maggie = Pitcher('Maggie')
print(maggie.name)
print(maggie.jersey)
print(maggie.strikeouts)
