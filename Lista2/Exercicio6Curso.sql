create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
	id bigint auto_increment,
    Ensino varchar(255) not null,
    EAD boolean not null,
    Matricula boolean not null, 
    primary key (id)
    );
    
    insert tb_categoria (Ensino, EAD, Matricula) values ("Basico 1", true, true);
    insert tb_categoria (Ensino, EAD, Matricula) values ("Basico 2", true, true);
    insert tb_categoria (Ensino, EAD, Matricula) values ("Intermediario 1", true, true);
    insert tb_categoria (Ensino, EAD, Matricula) values ("Avancado 1", true, true);
    insert tb_categoria (Ensino, EAD, Matricula) values ("Avancado 2", true, true);
    
    select * from tb_categoria;
    
    create table tb_curso (
	id bigint auto_increment,
    Nome varchar (255) not null,
    Valor decimal (10,2) not null,
    Duracao decimal (2,1) not null,
    Unidade varchar (225) not null,
    Turma decimal (2,1) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
    insert tb_curso (Nome, Valor, Duracao, Unidade, Turma, categoria_id) values ("Java", 180.00, 2, "Aclimacao",1.5, 1);
    insert tb_curso (Nome, Valor, Duracao, Unidade, Turma, categoria_id) values ("Java", 100.00, 1.5, "Lapa","1.1", 3);
    insert tb_curso (Nome, Valor, Duracao, Unidade, Turma, categoria_id) values ("Python", 95.00, 2, "Aclimacao","2.5", 3);
	insert tb_curso (Nome, Valor, Duracao, Unidade, Turma, categoria_id) values ("SQL", 55.00, 1.5, "Diadema","3.1", 4);
	insert tb_curso (Nome, Valor, Duracao, Unidade, Turma, categoria_id) values ("HTML", 45.00, 2, "Aclimacao","4.4", 5);
	insert tb_curso (Nome, Valor, Duracao, Unidade, Turma, categoria_id) values ("HTML", 40.00, 1.5, "Itaquera","4.1", 5);
	insert tb_curso (Nome, Valor, Duracao, Unidade, Turma, categoria_id) values ("Promocao Wordpress", 25.00, 1, "Aclimacao","2", 1);
	insert tb_curso (Nome, Valor, Duracao, Unidade, Turma, categoria_id) values ("Promocao Iniciante Programacao", 3.00, 1, "Aclimacao","1", 2);
    
    select * from tb_curso;
    
    select * from tb_curso where Valor > 50;
    
    select * from tb_curso where Valor between 3 and 60;
    
    select * from tb_curso where Nome like "%j%";
    
    select * from tb_curso inner join tb_categoria;
    
    select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.Ensino = "Basico 1";
    
