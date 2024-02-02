--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2),
  club_id INTEGER,
  merk_id INTEGER, 
  maat_id INTEGER,
  kleur_id INTEGER
);

CREATE TABLE club (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  club_name VARCHAR (230) 
  );

CREATE TABLE merk (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  merk_name VARCHAR (220)
  );

CREATE TABLE maat (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  maat_name VARCHAR (210)
  );

CREATE TABLE kleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur_name VARCHAR (200)
  );

CREATE TABLE competities 
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  competitie_name VARCHAR (200)
  );

);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('AC Milan 1997/98', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id.', '816905633-0', 139.95);
insert into products (name, description, code, price) values ('Post Mortem', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '077030122-3', 11);
insert into products (name, description, code, price) values ('Scarlet and the Black, The', 'Pellentesque at nulla. Suspendisse potenti.', '445924201-X', 13.5);
insert into products (name, description, code, price) values ('Aquí llega Condemor, el pecador de la pradera', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '693155505-7', 13.5);
insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '492662523-7', 14);

insert into club (club_name) values ('AC Milan');
insert into club (club_name) values ('Borussia Dortmund');
insert into club (club_name) values ('FC Barcelona');
insert into club (club_name) values ('Atletico Madri');
insert into club (club_name) values ('Arsenal');
insert into club (club_name) values ('Juventus');
insert into club (club_name) values ('Fiorentina');
insert into club (club_name) values ('AFC Ajax');
insert into club (club_name) values ('Manchester United');
insert into club (club_name) values ('AS Roma');
insert into club (club_name) values ('Aston Villa');
insert into club (club_name) values ('Chelsea');
insert into club (club_name) values ('FC Bayern München');

insert into merk (merk_name) values ('Adidas'); 
insert into merk (merk_name) values ('Nike');
insert into merk (merk_name) values ('Puma');
insert into merk (merk_name) values ('Umbro');
insert into merk (merk_name) values ('Reebok');
insert into merk (merk_name) values ('Kappa');

insert into maat (maat_name) values ('XS');
insert into maat (maat_name) values ('S');
insert into maat (maat_name) values ('M');
insert into maat (maat_name) values ('L');
insert into maat (maat_name) values ('XL');

insert into kleur (kleur_name) values ('Zwart');
insert into kleur (kleur_name) values ('Wit');
insert into kleur (kleur_name) values ('Rood');
insert into kleur (kleur_name) values ('Oranje');
insert into kleur (kleur_name) values ('Geel');
insert into kleur (kleur_name) values ('Groen');
insert into kleur (kleur_name) values ('Blauw');
insert into kleur (kleur_name) values ('Donkerblauw');
insert into kleur (kleur_name) values ('Paars');

insert into competities (competitie_name) values ('Eredivisie');
insert into competities (competitie_name) values ('Premier league');
insert into competities (competitie_name) values ('La liga');
insert into competities (competitie_name) values ('Serie A');
insert into competities (competitie_name) values ('Bundesliga');
insert into competities (competitie_name) values ('Ligue 1');
