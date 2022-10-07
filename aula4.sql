use bd2;
create table categorias( 
id int(11) primary key auto_increment,
nome varchar(255) not null
);
create table produtos(
   id int(11) primary key auto_increment,
   nome varchar(255) not null,
   valor float not null,
   categoria_id int(11) not null,
   foreign key(categoria_id) references categorias(id)
);
insert into categorias(nome) values('Produto de limpeza');
insert into categorias(nome) values('Papelaria');
select*from categorias;
insert into produtos(nome,valor,categoria_id)values
('Detergente',10.20,1);
insert into produtos(nome,valor,categoria_id)values
('Caneta',5.10,2);
insert into produtos(nome,valor,categoria_id)values
('Mouse',100.0,3);
rename table produtos to jele;
Create table produtos(
id int (11) not null auto_increment,
nome varchar(80) not null,
valor float not null,
categoria_id int(11) not null,
primary key(id)
);

alter table produtos
add foreign key(categoria_id) references categorias(id);