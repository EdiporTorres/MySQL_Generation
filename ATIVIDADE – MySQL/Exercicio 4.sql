create database db_generation_game_online;

use db_generation_game_online;

create table tb_personagens(
id_persona bigint auto_increment,
nome_persona varchar (25) not null,
sexo char(1),
idade int not null,
raça varchar(25),
poder_de_atk int,
idclasse bigint,
primary key (id_persona));

create table tb_classes(
id_classe bigint auto_increment,
nome_classe varchar(25) not null,
subclasse varchar (25) not null,
primary key (id_classe));

alter table tb_personagens add constraint fk_personagens_classes
foreign key (idclasse) references tb_classes(id_classe);

insert into tb_classes (nome_classe, subclasse)
values( "Mago", "Elementalista"),
("Mago", "Necromante"),
("Mago", "Pyromancer"),
("Guerreiro", "Paladino"),
("Guerreiro", "Lutador"),
("Guerreiro", "Tank");

insert into tb_personagens(nome_persona,sexo,idade,raça)
values ("Valderd", "m", 28, "Humano"),
("Ruijerd", "m", 35, "Demonio"),
("Elinalise", "f", 705, "Elfa"),
("Legolas", "m", 505, "Elfo"),
("Eragorn", "m", 35, "Humano"),
("Mr freakles", "f", 45, "??"),
("Eldora", "f", 22, "Gnomo"),
("Rimuru", "m", 4, "Slime");

select * from tb_personagens where poder_de_atk > 2000;
select * from tb_personagens where poder_de_atk in (1000, 2000);
select * from tb_personagens where nome_persona like '%c%';

UPDATE tb_personagens SET idclasse = 3 WHERE id_persona = 1;
UPDATE tb_personagens SET idclasse = 4 WHERE id_persona = 2;
UPDATE tb_personagens SET idclasse = 3 WHERE id_persona = 3;
UPDATE tb_personagens SET idclasse = 2 WHERE id_persona = 4;
UPDATE tb_personagens SET idclasse = 1 WHERE id_persona = 5;
UPDATE tb_personagens SET idclasse = 5 WHERE id_persona = 6;
UPDATE tb_personagens SET idclasse = 3 WHERE id_persona = 7;
UPDATE tb_personagens SET idclasse = 2 WHERE id_persona = 8;

SELECT nome_persona, raça, poder_de_atk, tb_classes.nome_classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.idclasse = tb_classes.id_classe;

SELECT nome_persona, raça, poder_de_atk, tb_classes.nome_classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.idclasse = tb_classes.id_classe where id_classe = 2;