# faça um programa que calcula o valor de fatorial de n

fat = int(input("Número pra pegar o fatorial: "))
resultado = 1
cont = 1

while cont <= fat:
    resultado = resultado * cont
    cont = cont + 1

print(f"fatorial de {fat} = {resultado}")