select *
from cliente
where primeiro_nome = "Mary"; # PROCURANDO POR NOME

select *
from cliente
where primeiro_nome like "%MAR%"; # PROCURANDO POR UMA PALAVRA QUE CONTENHA "MAR"

select *
from cliente
where primeiro_nome like "MAR%"; # PROCURANDO POR UMA PALAVRA QUE COMEÇA COM "MAR"

select *
from cliente
where cliente_id in (1,2,3); # PROCURA PELOS NÚMEROS ESPECIFICOS DENTRO DOS PARENTESES

select *
from cliente
where cliente_id > 1 and cliente_id < 100; # É POSSÍVEL FAZER ISSO

select *
from cliente
where ultimo_nome in ("Jones", "Russell", "Washington"); # ISSO TAMBÉM