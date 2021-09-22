create database db_cidade_das_frutas;


use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar (255),
categoria varchar (255),
tratamento varchar (255),
kilo decimal (6,2),
primary key(id)
);

insert into tb_categoria(tipo,categoria,tratamento,kilo) values ("Carne","primeira","congelador",400.0);
insert into tb_categoria(tipo,categoria,tratamento,kilo) values ("Ave","Coxa","congelador",400.0);
insert into tb_categoria(tipo,categoria,tratamento,kilo) values ("Peixe","Sem espinho","congelador",400.0);
insert into tb_categoria(tipo,categoria,tratamento,kilo) values ("Embutido","medalhão","freezer",400.0);
insert into tb_categoria(tipo,categoria,tratamento,kilo) values ("Parte de feijoada","mistura","freezer",200.0);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255),
marca varchar (255),
validade date,
valor decimal(4,2),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Bovina","Korin","2028-01-18",20.00,1);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Linguiça","Perdigão","2025-04-02",30.00,4);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Salcicha","Perdigão","2031-10-11",20.00,4);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Tilapia","Seara","2040-06-30",31.00,3);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Salmão","Seara","2026-05-22",59.90,3);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Torresmo","Swift","2028-10-03",5.00,5);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Picanha","Wessel","2030-04-20",91.00,1);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Alcatra","Swift","2030-09-12",44.00,1);

select * from tb_produto;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 1;