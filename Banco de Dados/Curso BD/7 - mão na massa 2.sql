select a.filme_id, a.titulo, b.nome
from filme_categoria c, categoria b, filme a
where a.filme_id = c.filme_id 
and b.categoria_id = c.categoria_id 
and nome = "Action"
order by filme_id;