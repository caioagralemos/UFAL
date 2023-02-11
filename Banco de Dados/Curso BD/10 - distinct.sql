select c.titulo, c.descricao, c.filme_id
from aluguel a, inventario b, filme c
where a.inventario_id = b.inventario_id and b.filme_id = c.filme_id
order by titulo; # COM DUPLICIDADE DE COLUNAS

select distinct c.titulo, c.descricao, c.filme_id
from aluguel a, inventario b, filme c
where a.inventario_id = b.inventario_id and b.filme_id = c.filme_id
order by titulo; # SEM DUPLICIDADE DE COLUNAS