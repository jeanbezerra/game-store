-- Lojinha para jogos indies brasileiros
--DDL
create table users(
id				varchar(50) not null,
nickname		varchar(250),
email			varchar(250),
password		text,
password_salt	text,
timestamp		timestamp,
primary key (id)
);

create table products(
id				varchar(50) not null,
name			varchar(250),
price_1			int,
price_2			int,
category		varchar(50),
description		text,
thumbnail		bytea,
level_required	int,
blocked			boolean,
amount			int,
new				boolean,
timestamp		timestamp,
primary key (id)
);

create table product_images(
id				varchar(50) not null,
product_id		varchar(50) not null,
image_file		bytea,
image_type		varchar(20),
image_size		bigint,
timestamp		timestamp,
primary key (id)
);

create table transactions(
id				varchar(50) not null,
user_id			varchar(50) not null,
total			int,
successfuly		boolean,
timestamp		timestamp,
primary key (id)
);

create table wallets(
id				varchar(50) not null,
user_id			varchar(50) not null,
currency_1		int,
currency_2		int,
blocked			boolean,
timestamp		timestamp,
primary key (id)
);

create table inventories(
id				varchar(50) not null,
user_id			varchar(50) not null,
slots			int default 10,
shared			boolean default false,
timestamp		timestamp,
primary key (id)
);


create table inventary_items(
id				varchar(50) not null,
product_id		varchar(50) not null,
inventory_id 	varchar(50) not null,
position		int,
amount			int,
timestamp		timestamp,
primary key (id)
);

-- selecao de dados
select * from users u ;
select * from products p;
select * from product_images pi;
select * from transactions t ;
select * from wallets w ;
select * from inventories i;
select * from inventary_items ii;

-- metadatas
insert into users (id,nickname,email,password,password_salt,timestamp) values ('00a82c02-6aa6-11ee-8c99-0242ac120002','steelhand900','jcbm.contato@outlook.com','1234',null,now());
insert into users (id,nickname,email,password,password_salt,timestamp) values ('1f299a8a-6aa6-11ee-8c99-0242ac120002','default','alvesntc.ent@outlook.com','1234',null,now());


--delete from products where id = '435aa36c-6aa7-11ee-8c99-0242ac120002';
--delete from products where id = '3ec173de-6aa8-11ee-8c99-0242ac120002';
insert into products (id,name,price_1,price_2,category,description,thumbnail,level_required,blocked,amount,new,timestamp) values ('435aa36c-6aa7-11ee-8c99-0242ac120002','Espada de cristal',10,3500,'Espadas de uma mão','Desperte seu destino com a Espada Estelar de Cristal: lâmina translúcida que captura constelações. Forjada na força dos cosmos, ela desafia a escuridão com cada golpe. Seu destino brilha agora em suas mãos.',null,40,false,2,true,now());
insert into products (id,name,price_1,price_2,category,description,thumbnail,level_required,blocked,amount,new,timestamp) values ('3ec173de-6aa8-11ee-8c99-0242ac120002','Elmo do Rei caído',250,10000,'Elmo','Vista a majestade do Elmo do Rei Caído: coroa de honra que testemunhou batalhas épicas. Em cada ranhura, sussurra a glória e a tragédia. Erga-se como herdeiro do passado, onde o rei se torna lenda.',null,75,false,1,true,now());
