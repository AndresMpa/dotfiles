# from dirs import base
import json

# print(base(), end='\n')
BASE = "/home/andresmpa/.config/qtile"

def getTheme():
    newTheme=None
    with open(f'{BASE}/current.txt') as current:
        themes = open(f'{BASE}/themes/{current.read().rstrip()}.json')
        newTheme = json.load(themes)
        themes.close()

    return newTheme
