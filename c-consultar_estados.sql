-- Consultando todos os dados da tabela
select * from estados;

-- Consultando os nomes dos estados e suas siglas
select nome, sigla from estados;

-- Inserindo um label para as colunas da tabela
select id, nome as "Nome dos Estados", sigla as "Sigla dos Estados" from estados;

-- Consultando os nomes dos estados e suas siglas, mas apenas os estados que começam com a letra 'P'
-- Utilizando o operador LIKE para filtrar dados
-- % indica zero ou mais caracteres
-- _ indica um único caractere
select nome, sigla from estados where nome LIKE 'P%';

-- Consultando os nomes dos estados e suas siglas, mas apenas os estados que não começam com a letra 'P'
select nome, sigla from estados where nome NOT LIKE 'P%';

-- Consultando os estados onde a região é Sul
select nome from estados where regiao = "Sudeste";

-- Consultando os estados onde a população é maior que 10 milhões, colocando em ordem crescente
select nome, populacao from estados
where populacao >= 10
order by populacao;

