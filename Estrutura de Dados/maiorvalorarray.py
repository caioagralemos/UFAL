# faça um programa que recebe um vetor de inteiros e retorna o elemento de maior valor desse vetor

maiorvalor = 0

for i in range(len(array)):
    if array[i] > maiorvalor:
        maiorvalor = array[i]

print(maiorvalor)