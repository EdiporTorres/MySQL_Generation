create database db_rh;

use db_rh;

create table tb_func(
nome varchar(255) not null,
id bigint auto_increment,
salario decimal not null, 
idade int,
função varchar(255),
primary KEY (id));

insert into tb_func(nome, salario, idade, função)
values ("Edipo Reis", 2520, 28, "Vendedor"),
("Luis Carlos", 1500,  27, "Auxliar"),
("Veneza", 3510, 33, "Gerente"),
("Edna", 4000, 52, "Lider de comando"),
("Mavis", 5410, 38, "CEO");

select * from tb_func where salario > 2000;

select * from tb_func where salario < 2000;

update tb_func set salario = 8112 where id = 1;