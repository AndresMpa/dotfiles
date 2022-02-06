from os import path

def base():
    return path.join(path.expanduser('~'), ".config", "qtile")

