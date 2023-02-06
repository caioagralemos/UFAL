
# faça um programa que recebe uma string, e retorna a string fornecida sem a ocorrência de mais de uma vez de cada letra que a forma

string = input("sua string: ").lower()

nova = []

for i in range(0, len(string)):
    if string[i] == " ":
        nova.append(string[i])

    if (string[i] in nova):
        continue
    else:
        nova.append(string[i])

nova = "".join(nova)
print(nova)