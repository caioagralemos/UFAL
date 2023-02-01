from num2words import num2words

num_str = input("Diga seu número: ")

if num_str.count('.') == 1:
    try:
        num = float(num_str)
    except:
        print("Algo deu errado.")
elif num_str.count('.') == 0:
    try:
        num = int(num_str)
    except:
        print("Algo deu errado.")

num_ptbr = num2words(num, lang='pt-br')
print(num_ptbr)