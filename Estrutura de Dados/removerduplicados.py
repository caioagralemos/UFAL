lista = [1, 2, 2, 2, 3, 4, 5, 5, 6, 7, 8, 9, 10, 1, 1, 1]
# remover elementos duplicados na lista
listasemduplicatas = set()
for i in lista:
    listasemduplicatas.add(i)

listasemduplicatas = list(listasemduplicatas)

print(listasemduplicatas)
