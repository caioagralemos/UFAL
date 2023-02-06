# faça um programa que soma o valor do fatorial dos n primeiros números naturais

nums2 = int(input("quantos números naturais? (fatorial) "))
soma2 = 0
cont = 1
resultado = 1
for i in range(0, nums2):
    while cont <= i:
        resultado = resultado * cont
        cont = cont + 1
    soma2 += resultado

print(soma2)