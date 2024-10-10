-- Inserindo a cidade de Caruaru com a área e associando ao estado com a sigla 'PE'
insert into cidades (nome, area, estado_id)
values ('Caruaru', 920.6, (select id from estados where sigla = 'PE'));

-- Inserindo a cidade de Campinas com a área e associando ao estado com a sigla 'SP'
insert into cidades (nome, area, estado_id)
values ('Campinas', 795.7, (select id from estados where sigla = 'SP'));

-- Inserindo a cidade de Salvador com a área e associando ao estado com a sigla 'BA'
insert into cidades (nome, area, estado_id)
values ('Salvador', 693.8, (select id from estados where sigla = 'BA'));

-- Inserindo a cidade de Recife com a área e associando ao estado com a sigla 'PE'
insert into cidades (nome, area, estado_id)
values ('Recife', 218.7, (select id from estados where sigla = 'PE'));

-- Inserindo várias cidades usando subconsultas para pegar o id do estado
insert into cidades (nome, area, estado_id)
values
('Fortaleza', 314.9, (select id from estados where sigla = 'CE')),
('Curitiba', 430.9, (select id from estados where sigla = 'PR')),
('Porto Alegre', 496.7, (select id from estados where sigla = 'RS'));

-- Inserindo outras cidades e associando ao estado com a sigla 'PE'
insert into cidades (nome, area, estado_id)
values
('João Alfredo', 135.0, (select id from estados where sigla = 'PE')),
('Surubim', 252.8, (select id from estados where sigla = 'PE')),
('Bom-Jardim', 224.1, (select id from estados where sigla = 'PE'));