create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id_categoria bigint(5) auto_increment,
	tamanho varchar(20),
    borda boolean,
    azeitona boolean,
    primary key (id_categoria)
);
insert into tb_categoria(tamanho,borda,azeitona) values ("grande",true,false);
insert into tb_categoria(tamanho,borda,azeitona) values ("medio",true,true);
insert into tb_categoria(tamanho,borda,azeitona) values ("medio",false,false);
insert into tb_categoria(tamanho,borda,azeitona) values ("grande",false,true);
insert into tb_categoria(tamanho,borda,azeitona) values ("pequeno",true,false);

create table tb_pizza(
	id_pizza bigint(5) auto_increment,
	sabor varchar(20),
    preco bigint(5),
    desconto boolean,
    fk_id_categoria bigint(5) not null,
    primary key (id_pizza),
    foreign key (fk_id_categoria) references tb_categoria(id_categoria)
);
insert into tb_pizza(sabor,preco,desconto,fk_id_categoria) values ("mucarela",35,false,2);
insert into tb_pizza(sabor,preco,desconto,fk_id_categoria) values ("peperoni",50,true,3);
insert into tb_pizza(sabor,preco,desconto,fk_id_categoria) values ("portuguesa",30,false,4);
insert into tb_pizza(sabor,preco,desconto,fk_id_categoria) values ("calabresa",47,false,1);
insert into tb_pizza(sabor,preco,desconto,fk_id_categoria) values ("baianinha",35,true,5);
insert into tb_pizza(sabor,preco,desconto,fk_id_categoria) values ("baiacatu",50,true,2);
insert into tb_pizza(sabor,preco,desconto,fk_id_categoria) values ("frango",70,false,3);
insert into tb_pizza(sabor,preco,desconto,fk_id_categoria) values ("moda da casa",35,false,2);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like '%c%';

select * from tb_pizza inner join tb_categoria on tb_pizza.fk_id_categoria = tb_categoria.id_categoria;

select * from tb_pizza where fk_id_categoria = 1; 
