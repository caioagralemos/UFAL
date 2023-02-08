import math
# remover de um elemento no
lista = ['zero', 1, 2, 3, 'isso vai no meio!', 4, 5, 6, 7]

#     início da lista
lista.pop(0)
#     meio da lista
meio = len(lista)/2
meio = math.ceil(meio)
lista.pop(meio)
#     final da lista
lista.pop()


print(lista)
