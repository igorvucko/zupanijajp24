drop database if exists drzava;
create database drzava;
use drzava;

create table zupanija(  
sifra int primary key auto_increment,
naziv varchar(50),
zupan int 
);

create table opcina( 
sifra int primary key auto_increment,
zupanija int,
naziv varchar(50)
);

create table zupan( 
sifra int primary key auto_increment,
ime varchar(50),
prezime varchar(50)
);

create table mjesto( 
sifra int primary key auto_increment,
opcina int,
naziv varchar(50)
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);
alter table zupanija add foreign key (zupan) references zupan(sifra);

select * from zupanija;

insert into zupanija(naziv) values ('Osjeèko-baranjska'),
('Vukovarsko-Srijemska'),('Virovitièko-podravska');

select * from opcina;

insert into opcina(zupanija,naziv) values(1,'Osijek'),(2,'Bertiæi'),
(3,'Virovitica'),(2,'Vukovar'),(1,'Sarvaš'),(2,'Podgajci');

select * from zupan;

insert into zupan(ime,prezime)
values ('Pero','Žderiæ'),('Andrej','Plenki'),('Josip','Borki');

select * from mjesto;

insert into mjesto(opcina,naziv)
values(1,'Višnjevac'),(2,'Prigajci'),(3,'Mirkovci'),(1,'Podravlje'),
(2,'Stupnik'),(3,'Èuturevci'),(6,'Tvrðavica'),(5,'Sevljanci'),
(6,'Kitišanci'),(4,'Mirkovci'),(4,'Viljkovci'),(5,'Šiškovci');

update mjesto set naziv='mjesto1'
where sifra=1;

update mjesto set naziv='mjesto2'
where sifra=2;

update mjesto set naziv='mjesto3'
where sifra=3;

update mjesto set naziv='mjesto4'
where sifra=4;

update mjesto set naziv='mjesto5'
where sifra=5;


