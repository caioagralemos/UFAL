# faça um programa que recebe um vetor de inteiros e retorna o elemento de maior valor desse vetor

array = [1,2,3,4,5,6,7,1231]
maiorvalor = 0

for i in range(len(array)):
    if array[i] > maiorvalor:
        maiorvalor = array[i]

print(maiorvalor)