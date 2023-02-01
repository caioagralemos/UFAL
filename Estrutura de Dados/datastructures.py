# Advanced number methods -

hex(10) # hexadecimal de um número
bin(10) # binário de um número
2**2 # elevado
abs(-2) # módulo de um número
round(3.141592,2) # arredondamento de um número (num, quantidade de decimais que vc quer)

# Advanced string methods -

s = 'hello world'
s.capitalize() # deixa a primeira letra da string maiúscula
s.upper() # deixa toda a string maiúscula
s.lower() # deixa toda a string minúscula
s.count('o') # contar quantos x (arg. passados) existem na string
s.find('o') # retorna o índice da primeira aparição do argumento passado
s.center(20, 'z') # centraliza a string (ex: zzzzhello worldzzzzz)
s.isalnum() # checa se todos os chars de uma string são alfanuméricos
s.isalpha() # checa se todos os chars de uma string são alfabéticos
s.islower() # checa se todos os chars de uma string são minúsculos
s.isspace() # checa se todos os chars de uma string são espaços
s.istitle() # checa se a primeira palavra de uma string tá capitalizada
s.isupper() # checa se todos os chars de uma string são maiúsculos
s.endswith('o') # checa se uma strinf termina com um argumento passado
s.split('o') # corta a string em cada aparição do argumento passado e retorna uma lista das partes
s.partition('o') # corta a string na primeira aparição do argumento passado e retorna uma lista das partes

# Advanced set methods -

s = set()
s.add(1) # adiciona o número 1 ao set
s.add(2) # adiciona o número 2 ao set
s.clear() # apaga tudo que tem dentro do set
sc = s.copy() # cria uma cópia do set (mudanças no original não afetam a cópia)
s.add(3) # adiciona o número 3 ao set
s.difference(sc) # retorna a diferença entre dois sets
s.difference_update(sc) # retorna o primeiro set excluindo qualquer semelhança que ele tenha com o segundo
s.discard(1) # descarta o elemento passado de um set
s.intersection(sc) # retorna o(s) elemento(s) que forem comuns aos dois sets
s.intersection_update(sc) # retorna o primeiro set mas apenas com a interseção entre ele e o segundo
s.isdisjoint(sc) # retorna um booleano, true se não houver nenhuma interseção entre os dois
s.issubset(sc) # retorna um booleano, true se o primeiro for um subconjunto do segundo
s.issuperset(sc) # retorna um booleano, true se o segundo for um subconjunto do primeiro
s.symmetric_difference(sc) # retorna a diferença entre os dois sets
s.union(sc) # soma os dois sets
s.update(sc) # soma os dois sets

# Advanced dictionary methods -

d = {'k1': 1, 'k2': 2}
{x:x**2 for x in range(10)} # dictionary comprehension, assim como é feito com listas
for k in d.items():
    #print(k) #('k1', 1)\n('k2', 2)
    pass
for k in d.values():
    #print(k) # 1\n2
    pass
for k in d.keys():
    #print(k) # k1\nk2
    pass

# Advanced list methods -

l = [1,2,3]
l.append(4) # insere um objeto no final da sua lista
l.count(1) # conta a quantidade de ocorrências do objeto passado em sua lista
l.extend([4,5]) # insere os objetos de outra lista na sua lista
l.index(2) # retorna o índice de um argumento passado
l.insert(2, 'inserted') # insere o elemento passado (2o argumento) no índice passado (1o argumento)
l.pop() # retorna e exclui o último elemento de uma lista (ou o do índice passado por argumento)
l.remove('inserted') # remove a primeira instância de um argumento passado da lista
l.reverse() # reverte a lista e os índices dos argumentos passados
l.sort() # organiza a lista (ordem crescente)