create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
	id bigint auto_increment,
    Tamanho varchar(255) not null,
    Borda boolean not null,
    Cliente boolean not null, 
    primary key (id)
    );
    
    insert tb_categoria (Tamanho, Borda, Cliente) values ("Grande", false, true);
    insert tb_categoria (Tamanho, Borda, Cliente) values ("Grande", true, true);
    insert tb_categoria (Tamanho, Borda, Cliente) values ("Media", false, true);
    insert tb_categoria (Tamanho, Borda, Cliente) values ("Media", true, true);
    insert tb_categoria (Tamanho, Borda, Cliente) values ("Pequena", false, true);
    
    select * from tb_categoria;
    
    create table tb_pizza (
	id bigint auto_increment,
    Sabor varchar (255) not null,
    Preco decimal (10,2) not null,
    Azeitona boolean not null,
    Bebida varchar(255) not null,
    Disponivel boolean not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
    insert tb_pizza (Sabor, Preco, Azeitona, Bebida, Disponivel, categoria_id) values ("Cogumelo", 80.00, true, "Laranja", true, 1);
    insert tb_pizza (Sabor, Preco, Azeitona, Bebida, Disponivel, categoria_id) values ("Cogumelo", 40.00, true, "Guarana",true, 3);
    insert tb_pizza (Sabor, Preco, Azeitona, Bebida, Disponivel, categoria_id) values ("Quatro Queijos", 90.00, false, "Uva",true, 2);
	insert tb_pizza (Sabor, Preco, Azeitona, Bebida, Disponivel, categoria_id) values ("Quatro Queijos", 40.00, false, "Guarana", true, 3);
	insert tb_pizza (Sabor, Preco, Azeitona, Bebida, Disponivel, categoria_id) values ("Calabresa", 90.00, true, "Guarana",true, 2);
	insert tb_pizza (Sabor, Preco, Azeitona, Bebida, Disponivel, categoria_id) values ("Calabresa", 50.00, false, "Limao",true, 4);
	insert tb_pizza (Sabor, Preco, Azeitona, Bebida, Disponivel, categoria_id) values ("Chocolate", 80.00, false, "Guarana",true, 1);
	insert tb_pizza (Sabor, Preco, Azeitona, Bebida, Disponivel, categoria_id) values ("Chocolate", 25.00, false, "Uva",true, 5);
    
    select * from tb_pizza;
    
    select * from tb_pizza where Preco > 45;
    
    select * from tb_pizza where Preco between 29 and 60;
    
    select * from tb_pizza where Sabor like "%c%";
    
    select * from tb_pizza inner join tb_categoria;
    
    select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.Tamanho = "Grande";
    
