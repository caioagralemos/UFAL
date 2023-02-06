# faça um programa que soma do valor dos n primeiros números da série de fibonacci

nums3 = int(input("quantos números naturais? (fibonacci) "))
soma3 = 0

for n in range(1, nums3+1):
    ultimo = 1
    penultimo = 1

    if (n == 1) or (n == 2):
        soma3 = soma3 + 1
    else:
        for count in range(2, n):
            resultado = ultimo + penultimo
            penultimo = ultimo
            ultimo = resultado
            count += 1
        soma3 = soma3 + resultado

print(soma3)
