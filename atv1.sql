create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
	id_classe bigint(5) auto_increment,
	tipo varchar(20),
    equipamento varchar(20),
    secundario varchar(20),
    primary key (id_classe)
);
insert into tb_classe(tipo,equipamento,secundario) values ("Guerreiro","espada","escudo");
insert into tb_classe(tipo,equipamento,secundario) values ("Mago","cajado","capuz");
insert into tb_classe(tipo,equipamento,secundario) values ("Orc","bastao","pedra");
insert into tb_classe(tipo,equipamento,secundario) values ("Sacerdote","cajado","espada");
insert into tb_classe(tipo,equipamento,secundario) values ("Samurai","katana","armadura");

use db_generation_game_online;
create table tb_personagem(
	id_personagem bigint(5) auto_increment,
	nome varchar(20),
    territorio varchar(20),
    ataque bigint(5),
    defesa bigint(5),
    fk_id_classe bigint(5) not null,
    primary key (id_personagem),
    foreign key (fk_id_classe) references tb_classe(id_classe)
);
insert into tb_personagem(nome,territorio,ataque,defesa,fk_id_classe) values ("Yasuo","Ionia",3000,1000,5);
insert into tb_personagem(nome,territorio,ataque,defesa,fk_id_classe) values ("Chand","Zaun",300,3000,3);
insert into tb_personagem(nome,territorio,ataque,defesa,fk_id_classe) values ("Lux","Demacia",2500,400,2);
insert into tb_personagem(nome,territorio,ataque,defesa,fk_id_classe) values ("Zilean","Icathia",2800,500,4);
insert into tb_personagem(nome,territorio,ataque,defesa,fk_id_classe) values ("Darius","Noxus",2000,3000,1);
insert into tb_personagem(nome,territorio,ataque,defesa,fk_id_classe) values ("Phoenix","Ionia",1000,2000,2);
insert into tb_personagem(nome,territorio,ataque,defesa,fk_id_classe) values ("Croc","Vazio",2000,2000,3);
insert into tb_personagem(nome,territorio,ataque,defesa,fk_id_classe) values ("Lee sin","Ionia",2500,2000,1);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like '%c%';

select * from tb_personagem inner join tb_classe on tb_personagem.fk_id_classe = tb_classe.id_classe;

select * from tb_personagem where fk_id_classe = 1; 
