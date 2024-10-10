-- Contando quantos estados existem na tabela
-- A função COUNT() conta o número de linhas que correspondem à condição
select COUNT(*) as "Total de Estados"
from estados;

-- Calculando a população total somada de todos os estados
-- A função SUM() soma todos os valores de uma coluna
select SUM(populacao) as "População Total"
from estados;

-- Calculando a média da população dos estados
-- A função AVG() retorna a média dos valores em uma coluna
select AVG(populacao) as "Média de População"
from estados;

-- Encontrando o estado com a maior população
-- A função MAX() retorna o valor máximo de uma coluna
select nome, sigla, populacao
from estados
where populacao = (
        select MAX(populacao)
        from estados
    );

-- Encontrando o estado com a menor população
-- A função MIN() retorna o valor mínimo de uma coluna
select nome, sigla, populacao
from estados
where populacao = (
        select MIN(populacao)
        from estados
    );

-- Agrupando estados por região e somando a população de cada região
-- A cláusula GROUP BY agrupa os dados em categorias (neste caso, por 'regiao')
select regiao,
    SUM(populacao) as "População por Região"
from estados
group by regiao;

-- Contando quantos estados existem em cada região
select regiao,
    COUNT(*) as "Total de Estados por Região"
from estados
group by regiao;

-- Encontrando a média de população por região
select regiao,
    AVG(populacao) as "Média de População por Região"
from estados
group by regiao;