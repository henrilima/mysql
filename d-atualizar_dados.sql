-- Atualizando o nome dos estados da tabela que estão incorretos
update estados set nome = 'Maranhão' where sigla = 'MA';

update estados
set nome = 'Paraná',
    populacao = 13.32
where sigla = 'PR';
