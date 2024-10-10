-- Criando a tabela 'prefeitos'
-- A tabela inclui um ID, o nome do prefeito e uma chave estrangeira 'cidade_id' que faz referência à tabela 'cidades'
create table if not exists prefeitos (
    id int unsigned not null auto_increment,
    nome varchar(255) not null,
    cidade_id int unsigned,
    primary key (id),
    unique key (nome),
    foreign key (cidade_id) references cidades (id)
)