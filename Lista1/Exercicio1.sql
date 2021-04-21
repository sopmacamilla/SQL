create database db_rh;

use db_rh;

create table tb_funcionaries (
	id bigint auto_increment,
    Nome varchar(30) not null,
    Nascimento date not null,
    Admissao date not null,
    Demissao boolean,
    Salario decimal(7,2),
    primary key(id)
);

select * from tb_funcionaries;

insert into tb_funcionaries (Nome, Nascimento, Admissao, Demissao, Salario) values ("Ariel",'1995-02-01','2020-01-01',true,2700.00);
insert into tb_funcionaries (Nome, Nascimento, Admissao, Demissao, Salario) values ("Iuri",'1994-01-11','2019-05-01',true,3000.00);
insert into tb_funcionaries (Nome, Nascimento, Admissao, Demissao, Salario) values ("Maria",'1997-09-22','2018-11-01',true,1800.00);
insert into tb_funcionaries (Nome, Nascimento, Admissao, Demissao, Salario) values ("Joao",'2000-05-30','2020-07-01',true,1500.00);
insert into tb_funcionaries (Nome, Nascimento, Admissao, Demissao, Salario) values ("Elis",'1991-11-07','2020-08-01',true,3300.00);

select * from tb_funcionaries where Salario > 2000.00;

select * from tb_funcionaries where Salario < 2000.00;

update tb_funcionaries set Salario = 1900.00 where id = 3;
