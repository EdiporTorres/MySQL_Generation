create database db_ecomercio;

use db_ecomercio;

create table tb_produtos(
nome varchar(255) not null,
id bigint auto_increment,
valor decimal(6,2) not null, 
quant int,
descrição varchar(255),
primary KEY (id));

insert into tb_produtos(nome, valor, quant, descrição)
values ("Vela", 3.20, 45, "Vela para iluminar a noite"),
("Lampada", 4.20,  50, "A Luz pode ser uma boa ideia"),
("Carro", 8000.54, 3, "CARS GO VRUUM"),
("Casa", 55.520, 2, "Sim, vendemos casa"),
("Pneu", 5.00, 545, "Para carrinhos de brinquedo");

select * from tb_produtos where valor > 500;

select * from tb_produtos where valor < 500;

update tb_produtos set valor = 45644.12 where id = 4;