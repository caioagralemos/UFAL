# faça um programa que recebe um número no formato de string 
# e informa o tipo do número fornecido (natural, inteiro ou real). 
# Existe a possibilidade do número fornecidos não ser válido para nenhum desses tipos, 
# caso em que uma mensagem de erro deve ser exibida para o usuário.


num_str = input("Diga seu número: ")

if num_str.count('.') == 1:
    try:
        if num_str.endswith('.0') == True:
            num = float(num_str)
            if num < 0:
                retorno = "inteiro"
            else:
                retorno = "natural"
        else:
            retorno = "real"
    except:
        print("Algo deu errado. 1")
elif num_str.count('.') == 0:
    try:
        num = int(num_str)
        if num < 0:
            retorno = "inteiro"
        else:
            retorno = "natural"
    except:
        print("Algo deu errado. 2")

print(f"Número {retorno}")