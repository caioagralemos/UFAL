# Dashboards
select a.nome, sum(b.preco_da_locacao) soma_preco_locacao
from categoria a, filme b, filme_categoria c
where a.categoria_id = c.categoria_id
and b.filme_id = c.filme_id
group by a.nome;