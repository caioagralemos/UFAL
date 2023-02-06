# faça um programa que soma o valor do fatorial dos n primeiros números naturais

nums2 = int(input("quantos números naturais? (fatorial) "))

soma = 0

for i in range(0, nums2+1):
    resultado = 1
    cont = 1
    while cont <= i:
        resultado = resultado * cont
        cont = cont + 1
    soma = soma + resultado

print(soma)