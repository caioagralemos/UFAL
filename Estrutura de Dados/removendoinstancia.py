lista = [1, 2, 2, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10, 1, 1, 1]
# remover a primeira ocorrĂȘncia de um elemento da lista
lista.remove(1)
# remover todas as ocorrĂȘncias de um elemento da lista
quantidade = lista.count(2)
for i in range(0, quantidade):
    lista.remove(2)

print(lista)
