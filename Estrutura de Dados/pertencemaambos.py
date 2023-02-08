lista1 = [1, 2, 7, 8, 9, 11, 27, 36]
lista2 = [2, 11, 4, 39, 27, 5]

lista3 = [1,2,3]
lista4 = [2,2,2,2,2]

lista5 = [1,2,3,4]
lista6 = [5, 7, 9]


def intersecao(lis1, lis2):
    listaIntersecao = set()

    for i in lis1:
        for j in lis2:
            if j == i:
                listaIntersecao.add(j)

    if listaIntersecao == set():
        return "Não existe interseção"
    else:
        return(listaIntersecao)
    
print(intersecao(lista1, lista2))
print(intersecao(lista3, lista4))
print(intersecao(lista5, lista6))
