import os

print("   _____  .__                                      \n  /     \ |__|______ ___.__._____    ____    ____  \n /  \ /  \|  \_  __ <   |  |\__  \  /    \  / ___\ \n/    Y    \  ||  | \/\___  | / __ \|   |  \/ /_/  >\n\____|__  /__||__|   / ____|(____  /___|  /\___  / \n        \/           \/          \/     \//_____/  ")
print("Ver. Pre-Alpha 0.1++")

while(True):
    path = os.getcwd()
    r = str(input(f'MirTerminal / {path} % '))
    os.system(r)