# faça um programa que recebe uma string e uma letra, e retorna yes caso a letra pertença a string e no caso contrário
def temLetra():
    string = input("sua string: ")
    letra = input("sua letra: ")

    if (letra in string):
        return True
    else:
        return False

print(temLetra())