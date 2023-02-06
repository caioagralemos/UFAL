# faça um programa que recebe uma string e uma letra, e retorna a string sem a primeira ocorrência da letra

string = input("sua string: ")
letra = input("sua letra: ")

letraindex = string.find(letra)

contador = 0
nova = []

if letraindex != -1:
    for i in range(0,len(string)):
        if i == letraindex:
            continue
        else:
            nova.append(string[i])
            contador+=1

nova = "".join(nova)
print(nova)