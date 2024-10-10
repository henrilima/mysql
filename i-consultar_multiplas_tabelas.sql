-- Usando INNER JOIN para combinar dados da tabela 'cidades' e 'estados'
-- A tabela 'cidades' possui a chave estrangeira 'estado_id' que referencia 'id' na tabela 'estados'
select cidades.nome as "Cidade",
    cidades.area,
    estados.nome as "Estado"
from cidades
    inner join estados on cidades.estado_id = estados.id;

-- Usando LEFT JOIN para listar todas as cidades, mesmo que não tenham correspondência em estados
select cidades.nome as "Cidade",
    cidades.area,
    estados.nome as "Estado"
from cidades
    left join estados on cidades.estado_id = estados.id;

-- Usando RIGHT JOIN para listar todos os estados, mesmo que não tenham cidades associadas
select cidades.nome as "Cidade",
    cidades.area,
    estados.nome as "Estado"
from cidades
    right join estados on cidades.estado_id = estados.id;

-- Usando JOIN e UNION para listar todas as cidades e estados, mesmo que não tenham correspondências (mySQL não suporta full join diretamente)
select cidades.nome as "Cidade", estados.nome as "Estado"
from cidades
left join estados on cidades.estado_id = estados.id
union
select cidades.nome as "Cidade", estados.nome as "Estado"
from cidades
right join estados on cidades.estado_id = estados.id;

-- Usando INNER JOIN com múltiplas tabelas
-- Exemplo de junção entre as tabelas 'cidades' e 'estados'
select cidades.nome as "Cidade",
    estados.nome as "Estado"
from cidades
    inner join estados on cidades.estado_id = estados.id;

-- Usando CROSS JOIN
-- Retorna o produto cartesiano entre as duas tabelas (todas as combinações possíveis)
select cidades.nome as "Cidade",
    estados.nome as "Estado"
from cidades
    cross join estados;