-- Criando a tabela 'cidades'
-- A tabela inclui um ID, o nome da cidade, a população e uma chave estrangeira 'estado_id' que faz referência à tabela 'estados'
create table if not exists cidades (
    id int unsigned not null auto_increment,
    nome varchar(255) not null,
    area decimal(10,2) not null,
    estado_id int unsigned,
    primary key (id),
    foreign key (estado_id) references estados(id) -- Referência à tabela 'estados'
);