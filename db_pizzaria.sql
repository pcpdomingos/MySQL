create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
nome varchar (255) not null,
tamanho varchar (255) not null,
categoria varchar (255) not null,
primary key (id)
);



insert into tb_categoria(nome, tamanho, categoria) values ("Portuguesa", "grande", "salgada");
insert into tb_categoria(nome, tamanho, categoria) values ("Calabresa", "média", "salgada");
insert into tb_categoria(nome, tamanho, categoria) values ("Chocolate", "grande", "doce");
insert into tb_categoria(nome, tamanho, categoria) values ("Brócolis com Catupiry", "grande", "vegana");
insert into tb_categoria(nome, tamanho, categoria) values ("Morango", "pequena", "doce");


create table tb_pizza(
id bigint auto_increment,
nome varchar(100) not null,
encremento varchar(255),
excessoes varchar (255),
valor int not null,
tempo int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_pizza (nome, encremento, excessoes, valor, tempo) VALUES ("Romeu e Julietta", "milho", "azeitona", 50, 30);
INSERT INTO tb_pizza (nome, encremento, excessoes, valor, tempo) VALUES ("Brigadeiro", "morango","bala", 50, 30);
INSERT INTO tb_pizza (nome, encremento, excessoes, valor, tempo) VALUES ("Baiana", "brocolis", "milho", 50, 35);
INSERT INTO tb_pizza (nome, encremento, excessoes, valor, tempo) VALUES ("Labomba", "queijo ralado","azeitona", 40, 30);
INSERT INTO tb_pizza (nome, encremento, excessoes, valor, tempo) VALUES ("Muçarela", "catupiry","cebola",55, 30);
INSERT INTO tb_pizza (nome, encremento, excessoes, valor, tempo) VALUES ("Portuguesa", "cebola", "azeitona", 30, 40);
INSERT INTO tb_pizza (nome, encremento, excessoes, valor, tempo) VALUES ("Marguerita", "cebola", "milho", 50, 45);
INSERT INTO tb_pizza (nome, encremento, excessoes, valor, tempo) VALUES ("Calabresa", "azeitona", "cebola", 40, 30);



select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id;
