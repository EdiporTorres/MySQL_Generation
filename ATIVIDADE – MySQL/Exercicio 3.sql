create database db_Escola;

use db_Escola;

create table tb_Alunos(
nome varchar(255) not null,
id bigint auto_increment,
Data_Nascimento Date not null, 
idade int,
nota int not null,
primary KEY (id));

insert into tb_Alunos(nome, Data_Nascimento, idade, nota)
values ("Edipo Reis", "1996-04-03", 28, 9),
("Luis Carlos", "1995-04-07",  29, 8),
("Veneza", "2005-01-12", 19, 5),
("Edna", "1968-07-08", 52, 2),
("Mavis", "2009-02-05", 15, 10);

select * from tb_Alunos where nota > 7;

select * from tb_Alunos where nota < 7;

update tb_Alunos set nota = 4 where id = 1;