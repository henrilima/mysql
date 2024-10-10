-- Inserindo o prefeito associando ele a uma cidade pelo nome
insert into prefeitos (nome, cidade_id)
values ("João Campos", (SELECT id FROM cidades WHERE nome = "Recife" LIMIT 1));

insert into prefeitos (nome, cidade_id)
values
("Zé Martins", (SELECT id FROM cidades WHERE nome = "João alfredo" LIMIT 1)),
("Chaparral", (SELECT id FROM cidades WHERE nome = "Surubim" LIMIT 1)),
("Janjão", (SELECT id FROM cidades WHERE nome = "bom-jardim" LIMIT 1));