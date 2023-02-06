lista = [7, 4, 3, 5, 2, 8]

print(lista)
print(len(lista)) # comprimento 
print(lista[0]) # cabeça

cauda = []
for i in range(len(lista)):
    if i == 0:
        continue
    else:
        cauda.append(lista[i])

print(cauda)

concatenado = lista + [11, 9, 1]

print(concatenado)

lista.append(10) # insere

lista.reverse() # reverte
print(lista)