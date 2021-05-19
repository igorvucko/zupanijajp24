select * from smjer
where sifra<10;
select * from osoba;
# osnovna select naredba koristi samo select
select 5;
# djelovi select naredbe
# select lista - filtriranje kolona
# * - sve kolone
select * from osoba;
# nazivi kolona odvojeni zarezom
select ime, prezime from osoba;
# kolonama se mogu dati zamjenska imena
select ime as naziv from osoba;
select oib as kljuc, ime, prezime from osoba;
select ime, prezime, ime, prezime from osoba;
select *,ime from osoba;
# mo�e se nalaziti i konstanta
select ime, prezime, 'Osijek' as mjesto from osoba;
select 1,2,'Pero' from osoba;
# mo�e se jo� nalaziti izraz(funkcija)
select upper(ime), left(ime,1) from osoba;
select now();
#filtriranje redova
# primarni klju� u where osigurava jedan red
select * from osoba where sifra=1;
# where radi s operatorima
# operatori udpore�ivanja
# =, != (<>), <, >, <= i >=
select * from osoba where sifra<5;
select * from osoba where sifra!=5;
select * from osoba where sifra<>5;
select * from osoba where sifra<=5;
# logi�ki operatori - boolovi operatori
# and, or i not
select * from osoba 
where sifra>=3 and sifra<=5;
select * from osoba where sifra=3 or sifra=5;
select * from osoba where not (
sifra=1 or ((sifra>=8 and sifra<=9) or sifra=12));
# ostali operatori
# in, between, like, is null i is not null
select * from grupa where datumpocetka is not null;
select * from osoba where sifra=5 or sifra=8 or sifra=12;
select * from osoba where sifra in(5,8,12);
select * from osoba where sifra>5 and sifra<=10;
select * from osoba where sifra between 5 and 10;
select * from osoba where ime='Josip';
#sve osobe �ije ime po�inje slovom J
select * from osoba where ime like '%';
select * from osoba where ime like 'J%';
select * from osoba where ime like '%om%';
select * from osoba where ime like '%a';
select * from osoba where ime not like '%a';
# baza mjesta
# odaberite sva mjesta koja se nalaze u Osje�ko baranjskoj
# �upaniji
select * from mjesto;
select * from mjesto where postanskibroj like '31%';
# odaberite sva mjesta koja u sebi imaju niz znakova guz
select * from mjesto where naziv like '%guz%';
# odaberite sva mjesta koja ne zavr�avaju s nizom znakova ar 
select * from mjesto where naziv not like '%ar';
# baza knjiznica
# odaberite sve autore za koje ne znamo datum ro�enja
select * from autor;
select * from autor where datumrodenja is null;
# odaberite autore koju su ro�eni na va� datum ro�enja
select * from autor where datumrodenja = '1997-26-06';
# odaberite autore koji imaju isto ime kao vi
select * from autor where ime like '%jakob%';
# odaberite sve izdava�e koji su iz
# dru�tva s ograni�enom odgovorno��u
select * from izdavac;
select * from izdavac where naziv like '%d.o.o.%'
or naziv like '%d.o.o%'
# baza world
# odaberite sve zemlje iz Europe
select * from country;
select * from country where region like '%europe%';
# unesite mjesto u kojem �ivite
select * from country;
select * from country where name like '%croatia%';
select * from country where code like '%HRV%';

# unesite mjesto Donji Miholjac
select * from city;

insert into city (Name, CountryCode, District, Population) 
values ('Donji Miholjac', 'HRV', 'Osijek-Baranja', 10000);

select * from city where name like '%Donji Miholjac%';

# promjenite Donji Miholjac u �pi�kovinu
select * from city;
update city set Name='spickovina' where ID=4080;