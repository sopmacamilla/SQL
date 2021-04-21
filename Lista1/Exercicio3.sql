create database db_escola;

use db_escola;

create table tb_alunes(
	id bigint auto_increment,
    Nome varchar(30) not null,
    Ano varchar(10) not null,
    Turma varchar(30) not null,
    Materia varchar (30) not null,
    Nota decimal(3,1) not null,
    primary key(id)
);

select * from tb_alunes;

insert into tb_alunes (Nome, Ano, Turma, Materia, Nota) values ("Iuri","6",'A',"Matematica",9.8);
insert into tb_alunes (Nome, Ano, Turma, Materia, Nota) values ("Iuri","6",'A',"Portugues",8.8);
insert into tb_alunes (Nome, Ano, Turma, Materia, Nota) values ("Iuri","6",'A',"Historia",10.0);
insert into tb_alunes (Nome, Ano, Turma, Materia, Nota) values ("Iuri","6",'A',"Geografia",5.5);
insert into tb_alunes (Nome, Ano, Turma, Materia, Nota) values ("Iuri","6",'A',"Artes",8.9);
insert into tb_alunes (Nome, Ano, Turma, Materia, Nota) values ("Iuri","6",'A',"Educação Física",7.9);
insert into tb_alunes (Nome, Ano, Turma, Materia, Nota) values ("Iuri","6",'A',"Ciências",7.5);
insert into tb_alunes (Nome, Ano, Turma, Materia, Nota) values ("Iuri","6",'A',"Informática",9.5);

select * from tb_alunes where Nota > 7;

select * from tb_alunes where Nota < 7;

update tb_alunes set Nota = 6.0 where id = 5;

select * from tb_alunes;