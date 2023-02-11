select a.aluguel_id, a.data_de_aluguel, a.data_de_devolucao, b.primeiro_nome, b.ultimo_nome, b.email
from aluguel a, cliente b
where a.cliente_id = b.cliente_id
order by a.aluguel_id;
