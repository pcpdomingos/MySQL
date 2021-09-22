create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar (255),
opcoesDePagamento varchar (255),
servicos varchar (255),
primary key(id)
);

insert into tb_categoria(categoria,opcoesDePagamento,servicos) values ("decoração","crédito","entrega");
insert into tb_categoria(categoria,opcoesDePagamento,servicos) values ("ferramentas","debito","retirada");
insert into tb_categoria(categoria,opcoesDePagamento,servicos) values ("jardim-e-varanda","boleto","entrega");
insert into tb_categoria(categoria,opcoesDePagamento,servicos) values ("madeiras","debito","retirada");
insert into tb_categoria(categoria,opcoesDePagamento,servicos) values ("banheiros","crédito ou débito","retiradas");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
produto varchar (255),
prazoDeEntrega varchar (255),
valor decimal(6,3),
tendencia varchar (255),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(produto, prazoDeEntrega, valor, tendencia, categoria_id) values ("piso","30 dias",229.0,"vintage",4);
insert into tb_produto(produto, prazoDeEntrega, valor, tendencia, categoria_id) values ("chuveiro","30 dias",57.90,"moderno",5);
insert into tb_produto(produto, prazoDeEntrega, valor, tendencia, categoria_id) values ("gabinete","40 dias",399.90,"moderno",5);
insert into tb_produto(produto, prazoDeEntrega, valor, tendencia, categoria_id) values ("enrolador-de-mangueira","30 dias",134.00,"moderno",3);
insert into tb_produto(produto, prazoDeEntrega, valor, tendencia, categoria_id) values ("martelo","15 dias",21.00,"vintage",2);
insert into tb_produto(produto, prazoDeEntrega, valor, tendencia, categoria_id) values ("vaso plástico","15 dias",76.99,"moderno",3);
insert into tb_produto(produto, prazoDeEntrega, valor, tendencia, categoria_id) values ("terra-vegetal","15 dias",19.99,"moderno",3);
insert into tb_produto(produto, prazoDeEntrega, valor, tendencia, categoria_id) values ("biombo","30 dias",473.99,"moderno",1);

select * from tb_produto;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 30.00 and 60.00;

select * from tb_produto where produto like "%c%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 5
