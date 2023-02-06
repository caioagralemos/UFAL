# faça um programa que calcula o n-ésimo elemento da série de fibonacci

n = int(input("Número na sequência de fibonacci: "))
ultimo = 1
penultimo = 1

if (n == 1) or (n == 2):
    print("1")
else:
    for count in range(2, n):
        resultado = ultimo + penultimo
        penultimo = ultimo
        ultimo = resultado
        count += 1
    print(resultado)