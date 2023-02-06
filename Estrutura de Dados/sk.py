# faça um programa que soma do valor dos n primeiros números da série de fibonacci

nums3 = int(input("quantos números naturais? (fibonacci) "))
soma3 = 0

for n in range(0, nums3):
    if (n == 1) or (n == 2):
        print("1")
    else:
        for count in range(2, n):
            resultado = ultimo + penultimo
            penultimo = ultimo
            ultimo = resultado
            count += 1
            soma3 = soma3 + resultado
    
print(soma3)
