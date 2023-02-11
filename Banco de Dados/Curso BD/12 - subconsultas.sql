select * from endereco c where c.endereco_id in (select b.endereco_id
from aluguel a, cliente b
where a.cliente_id = b.cliente_id
group by b.primeiro_nome
having count(*) > 20); # pega os endereços das pessoas que alugaram mais de 20x

select * from aluguel c where c.aluguel_id 
in (select a.aluguel_id # todos os alugueis das pessoas com mais de 20 locações
from aluguel a, cliente b
where a.cliente_id = b.cliente_id
group by b.primeiro_nome
having count(*) > 20); 

select max(c.data_de_aluguel) from aluguel c where c.aluguel_id # função max pega o maior 
in (select a.aluguel_id # todos os alugueis das pessoas com mais de 20 locações
from aluguel a, cliente b
where a.cliente_id = b.cliente_id
group by b.primeiro_nome
having count(*) > 20); 
