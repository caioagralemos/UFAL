# faça um programa que recebe uma string e uma letra, e retorna a string sem todas as ocorrências da letra

string = input("sua string: ").lower()
letra = input("sua letra: ").lower()


contador = 0
nova = []

for i in range(0,len(string)):
        if string[i] == letra:
            continue
        else:
            nova.append(string[i])

nova = "".join(nova)
print(nova)
