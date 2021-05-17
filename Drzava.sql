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

insert into opcina(zupanija,naziv) values(1,'Osijek'),
(3,'Virovitica'),(2,'Vukovar'),(1,'Sarvaš'),(2,'Podgajci');

