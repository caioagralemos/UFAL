# vendas mensais
select d.nome Categoria, sum(b.preco_da_locacao) preco_da_locacao
from aluguel a, filme b, inventario c, categoria d, filme_categoria e
where a.data_de_devolucao between "2005-05-01 00:00:00" and "2005-05-31 23:59:59"
and a.inventario_id = c.inventario_id
and b.filme_id = c.filme_id
and d.categoria_id = e.categoria_id
and e.filme_id = b.filme_id
group by d.nome;

# vendas anuais
select d.nome Categoria, sum(b.preco_da_locacao) preco_da_locacao
from aluguel a, filme b, inventario c, categoria d, filme_categoria e
where a.data_de_devolucao between "2005-01-01 00:00:00" and "2005-12-31 23:59:59"
and a.inventario_id = c.inventario_id
and b.filme_id = c.filme_id
and d.categoria_id = e.categoria_id
and e.filme_id = b.filme_id
group by d.nome;