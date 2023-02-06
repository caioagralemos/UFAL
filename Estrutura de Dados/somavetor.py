# faça um programa que recebe um vetor de inteiros e retorna a soma dos elementos desse vetor

array = [1, 2, 3, 4, 5, 6, 7, 1241]

soma = 0

for i in range(len(array)):
    soma = soma + array[i]

print(soma)