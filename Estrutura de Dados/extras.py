lista = [1,2,3,4,5,6,6,7,8,9,9]
lista2 = [0,33,44,55,66]
# inverter uma lista
lista.reverse()
print(f"1: {lista}") # reverte a lista e os índices dos argumentos passados
# concatenar uma lista
concatenada = lista+lista2
print(f"2: {concatenada}")
# verificar o elemento maior da lista
maiorelemento = 0
for i in concatenada:
    if i > maiorelemento:
        maiorelemento = i
print(f"3: {maiorelemento}")