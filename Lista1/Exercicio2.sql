create database db_ecommerce;

use db_ecommerce;

create table tb_ecommerce (
	id bigint auto_increment,
    Produto varchar(30) not null,
    Marca varchar(30) not null,
    Preco decimal (7,2) not null,
    Cor varchar(20),
    Quantidade int(100),
    primary key(id)
);

select * from tb_ecommerce;

insert into tb_ecommerce (Produto, Marca, Preco, Cor, Quantidade) values ("Colar","Vivara",719.90,"Dourado",5);
insert into tb_ecommerce (Produto, Marca, Preco, Cor, Quantidade) values ("Colar","Pandora",689.90,"Dourado",5);
insert into tb_ecommerce (Produto, Marca, Preco, Cor, Quantidade) values ("Colar","Pandora",649.90,"Prateado",6);
insert into tb_ecommerce (Produto, Marca, Preco, Cor, Quantidade) values ("Brinco","Vivara",549.90,"Dourado",8);
insert into tb_ecommerce (Produto, Marca, Preco, Cor, Quantidade) values ("Brinco","Pandora",509.90,"Dourado",10);
insert into tb_ecommerce (Produto, Marca, Preco, Cor, Quantidade) values ("Brinco","Pandora",469.90,"Prateado",15);
insert into tb_ecommerce (Produto, Marca, Preco, Cor, Quantidade) values ("Anel","Vivara",389.90,"Dourado",6);
insert into tb_ecommerce (Produto, Marca, Preco, Cor, Quantidade) values ("Anel","Pandora",319.90,"Dourado",8);

select * from tb_ecommerce where Preco > 500.00;

select * from tb_ecommerce where Preco < 500.00;

update tb_ecommerce set Quantidade = 12 where id = 6;

