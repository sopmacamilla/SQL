create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
	id bigint auto_increment,
    Departamento varchar(255) not null,
    Tipo varchar(255) not null,
    Receita boolean not null, 
    primary key (id)
    );
    
    insert tb_categoria (Departamento, Tipo, Receita) values ("Cosméticos", "Hair Care", false);
    insert tb_categoria (Departamento, Tipo, Receita) values ("Medicamentos", "Genéricos", true);
    insert tb_categoria (Departamento, Tipo, Receita) values ("Higiene", "Bucal", false);
    insert tb_categoria (Departamento, Tipo, Receita) values ("Mamãe e bebê", "Hora da Troca", false);
    insert tb_categoria (Departamento, Tipo, Receita) values ("Saúde e bem estar", "Suplementos", false);
    
    select * from tb_categoria;
    
    create table tb_produto (
	id bigint auto_increment,
    Nome varchar (255) not null,
    Valor decimal (10,2) not null,
    Marca varchar (255)not null,
    Estoque int not null,
    Promocao boolean not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
    insert tb_produto (Nome, Valor, Marca, Estoque, Promocao, categoria_id) values ("Creme Para Penteado", 11.99, "Neutrox", 30, false, 1);
    insert tb_produto (Nome, Valor, Marca, Estoque, Promocao, categoria_id) values ("Bupropiona", 56.60, "CIMED", 100, true, 2);
    insert tb_produto (Nome, Valor, Marca, Estoque, Promocao, categoria_id) values ("Bepantol", 19.90, "Bayer", 32, true, 3);
	insert tb_produto (Nome, Valor, Marca, Estoque, Promocao, categoria_id) values ("Fralda", 54.90, "Pampers", 87, false, 4);
	insert tb_produto (Nome, Valor, Marca, Estoque, Promocao, categoria_id) values ("Vitamina C", 9.99, "Redoxon", 45, false, 5);
	insert tb_produto (Nome, Valor, Marca, Estoque, Promocao, categoria_id) values ("Desodorante", 12.80, "Rexona", 71, true, 1);
	insert tb_produto (Nome, Valor, Marca, Estoque, Promocao, categoria_id) values ("Ibuprofeno", 7.99, "EMS", 120, false, 2);
	insert tb_produto (Nome, Valor, Marca, Estoque, Promocao, categoria_id) values ("Cotonete", 4.90, "Huggies", 100, true, 4);

    
    select * from tb_produto;
    
    select * from tb_produto where Valor > 50;
    
    select * from tb_produto where Valor between 3 and 60;
    
    select * from tb_produto where Nome like "%b%";
    
    select * from tb_produto inner join tb_categoria;
    
    select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.Receita = true;
    
