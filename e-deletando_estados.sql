-- Excluindo um estado específico pelo seu nome
delete from estados
where nome = 'São Paulo';

-- Excluindo estados onde a população é menor que 1 milhão
delete from estados
where populacao < 1;

-- Excluindo todos os estados onde a região é 'Norte'
delete from estados
where regiao = 'Norte';

-- Excluindo todos os dados da tabela 'estados'
-- Cuidado! Isso exclui todas as informações da tabela
--> delete from estados;

-- Excluindo estados com base em siglas que começam com a letra 'R'
delete from estados
where sigla LIKE 'R%';

-- Excluindo estados com siglas que não começam com a letra 'R'
delete from estados
where sigla NOT LIKE 'R%';