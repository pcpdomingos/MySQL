create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
periodo varchar (255),
curso varchar (255),
certificado varchar (255),
primary key(id)
);

insert into tb_categoria(periodo,curso,certificado) values ("manhã","programação","full steck");
insert into tb_categoria(periodo,curso,certificado) values ("noite","inglês","fluente");
insert into tb_categoria(periodo,curso,certificado) values ("tarde","gastronomia","chefe");
insert into tb_categoria(periodo,curso,certificado) values ("integral","contabilidade","contador");
insert into tb_categoria(periodo,curso,certificado) values ("manhã e noite","pedagogia","doutorado");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255),
periodoDeCurso varchar (255),
tempoEstimado varchar (255),
valor decimal(6,3),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome,periodoDeCurso,tempoEstimado,valor,categoria_id) values ("você chefe","4hrs","2 anos",400.00,3);
insert into tb_produto(nome,periodoDeCurso,tempoEstimado,valor,categoria_id) values ("Método Contabil","5hrs","4 anos",500.00,4);
insert into tb_produto(nome,periodoDeCurso,tempoEstimado,valor,categoria_id) values ("Java Full Steck","8hrs","3 mêses",50.00,1);
insert into tb_produto(nome,periodoDeCurso,tempoEstimado,valor,categoria_id) values ("Inglés ágil","4hrs","5 anos",250.00,2);
insert into tb_produto(nome,periodoDeCurso,tempoEstimado,valor,categoria_id) values ("Confeitaria","5hrs","3 anos",300.00,3);
insert into tb_produto(nome,periodoDeCurso,tempoEstimado,valor,categoria_id) values ("Aprendendo a ensinar","6hrs","5 anos",689.99,3);
insert into tb_produto(nome,periodoDeCurso,tempoEstimado,valor,categoria_id) values ("Phytom","4hrs","3 mêses",99.90,3);
insert into tb_produto(nome,periodoDeCurso,tempoEstimado, valor,categoria_id) values ("Escola para professores","4hrs","4 anos",700.00,5);

select * from tb_produto;

select * from tb_produto where valor > 50.00;

select * from tb_produto where valor between 30.00 and 60.00;

select * from tb_produto where produto like "%j%";

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 2
