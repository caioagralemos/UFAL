select b.primeiro_nome, b.ultimo_nome, b.email, count(*) total_de_alugueis
from aluguel a, cliente b
where a.cliente_id = b.cliente_id
group by b.primeiro_nome
having count(*) > 20
order by total_de_alugueis desc;