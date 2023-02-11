Select preco_da_locacao, count(*) 
from filme
group by preco_da_locacao;

Select duracao_da_locacao, count(*) 
from filme
group by duracao_da_locacao
order by duracao_da_locacao;