import math
# adicionar um elemento no

lista = [1,2,3,4,5,6]

#     início da lista
lista.insert(0, "zero")
#     final da lista
lista.append(7)
#     meio da lista 
meio = len(lista)/2
meio = math.ceil(meio)
lista.insert(meio, "isso vai no meio!")

print(lista)