# faça um programa que receba um nome válido
    # para efeitos de teste, os nomes válidos são formados só por letra
    # não existe a possibilidade de um nome ter zero caracteres
    # o campo não deve permitir que a string inicie com uma letra minúscula nem com espaço

nome = input("Nos diga seu nome: ")

valido = True

if nome == "":
    valido = False
    # não existe a possibilidade de um nome ter zero caracteres
elif nome.startswith(" ") == True:
    valido = False
    # o campo não deve permitir que a string inicie com espaço
elif nome.isalpha() == False:
    valido = False
    # para efeitos de teste, os nomes válidos são formados só por letra
elif nome.istitle() == False:
    valido = False
    # o campo não deve permitir que a string inicie com uma letra minúscula

if valido == True:
    print("Nome válido")
else:
    print("Nome inválido")
