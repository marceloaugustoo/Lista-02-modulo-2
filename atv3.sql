create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id_categoria bigint(5) auto_increment,
	tipo varchar(20),
    prescricao boolean,
    desconto boolean,
    primary key (id_categoria)
);
insert into tb_categoria(tipo,prescricao,desconto) values ("remedio",true,false);
insert into tb_categoria(tipo,prescricao,desconto) values ("cosmetico",false,true);
insert into tb_categoria(tipo,prescricao,desconto) values ("alimento",false,false);
insert into tb_categoria(tipo,prescricao,desconto) values ("alimento",false,true);
insert into tb_categoria(tipo,prescricao,desconto) values ("remedio",true,true);

create table tb_produto(
	id_produto bigint(5) auto_increment,
	nome varchar(20),
    valor bigint(5),
    moedelo varchar(20),
    x varchar(1),
    fk_id_categoria bigint(5) not null,
    primary key (id_produto),
    foreign key (fk_id_categoria) references tb_categoria(id_categoria)
);
insert into tb_produto(nome,valor,moedelo,x,fk_id_categoria) values ("shampoo",20,"grande","x",2);
insert into tb_produto(nome,valor,moedelo,x,fk_id_categoria) values ("perfume",200,"pequeno","x",2);
insert into tb_produto(nome,valor,moedelo,x,fk_id_categoria) values ("brinco",30,"pequeno","x",2);
insert into tb_produto(nome,valor,moedelo,x,fk_id_categoria) values ("cimegripe",10,"medio","x",5);
insert into tb_produto(nome,valor,moedelo,x,fk_id_categoria) values ("doril",10,"pequeno","x",1);
insert into tb_produto(nome,valor,moedelo,x,fk_id_categoria) values ("gardenal",10,"pequeno","x",5);
insert into tb_produto(nome,valor,moedelo,x,fk_id_categoria) values ("shampoo",10,"medio","x",2);
insert into tb_produto(nome,valor,moedelo,x,fk_id_categoria) values ("shampoo",5,"pequeno","x",2);

select * from tb_produto;

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like '%b%';

select * from tb_produto inner join tb_categoria on tb_produto.fk_id_categoria = tb_categoria.id_categoria;

select * from tb_produto where fk_id_categoria = 1; 
