create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar (255),
tipo varchar (255),
tipoDeProduto varchar (255),
primary key(id)
);

insert into tb_categoria(categoria, tipo, tipoDeProduto) values ("higiene","bocal","escova");
insert into tb_categoria(categoria, tipo, tipoDeProduto) values ("saude","piscologica","comprimido");
insert into tb_categoria(categoria, tipo, tipoDeProduto) values ("cosmetico","maquiagem","tratamento");
insert into tb_categoria(categoria, tipo, tipoDeProduto) values ("proteção","camisinha","prevenção");
insert into tb_categoria(categoria, tipo, tipoDeProduto) values ("bem-estar","shake","suplemento");



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

insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Desodorante","Dove","2028-01-18",8.00,1);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Sabonete","Protex","2025-04-02",8.00,1);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Repelente","Sol","2031-10-11",20.00,4);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Bandeide","Bandeide","2040-06-30",13.00,4);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Vitamina","Super-Grown","2026-05-22",50.00,5);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Maquiagem","Assepxia","2028-10-03",30.00,3);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Talco Tenys","Tenys-pé","2030-04-20",13.00,1);
insert into tb_produto(nome, marca, validade, valor, categoria_id) values ("Remédio","Tarja-Preta","2030-09-12",5.00,2);

select * from tb_produto;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 3.00 and 60.00;

select * from tb_produto where nome like "%b%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 1;