select c.titulo, b.inventario_id, a.data_de_aluguel
from aluguel a, inventario b, filme c
where a.inventario_id = b.inventario_id and b.filme_id = c.filme_id
order by data_de_aluguel desc;