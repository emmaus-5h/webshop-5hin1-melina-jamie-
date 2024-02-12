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
  kleur_id INTEGER,
  competitie_id INTEGER
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

CREATE TABLE competities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  competitie_name VARCHAR (200)
  );

--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('AC Milan 1997/98','Gedragen door de sterspeler ', '1029874', 139.95,'AC Milan', 'Puma', 'XS', 'Rood', 'Serie A');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('Borussia Dortmund', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', '1029980', 115.00, 'Borussia Dortmund', 'Puma', 'S', 'Zwart', 'Bundesliga');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('Fc Barcelona', 'Pellentesque at nulla. Suspendisse potenti.', '1029760', 135.00, 'FC Barcelona', 'Adidas', 'M', 'Zwart', 'La Liga');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('Atletico Madrid', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', '1029654', 134.99, 'Atletico Madrid', 'Puma', 'M', 'Blauw', 'La Liga');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('Arsenal', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '1029433', 169.99, 'Arsenal', 'Puma', 'S', 'Blauw', 'Premier League');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('Juventus', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', '1029258', 139.99, 'Juventus', 'Adidas', 'S', 'Wit', 'Serie A');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('Fiorentina', 'Nulla ut', '1029132', 159.99, 'Fiorentina', 'Puma', 'S', 'Rood', 'Serie A');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('AFC Ajax', 'gedragen door', '1029075', 119.99, 'AFC Ajax', 'Puma', 'S', 'Rood', 'Eredivisie');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('Manchester United', 'Gedragen door speler', '1028760', 124.99, 'Manchester United', 'Puma', 'S', 'Rood', 'Premier League');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('AS Roma', 'Gedragen door speler', '1028640', 135.99, 'AS Roma', 'Puma', 'S', 'rood', 'Serie A');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('Aston Villa', 'GEdragen door speler','1028560', 142.99, 'Aston Villa', 'Puma', 'S', 'Rood', 'Premier League');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('Chelsea', 'Gedragen door speler', '1028345', 114.99, 'Chelsea', 'Puma', 'S', 'Rood', 'Premier League');
insert into products (name, description, code, price, club_id, merk_id, maat_id, kleur_id, competitie_id) values ('FC Bayern München', 'Gedragen door speler', '1028206', 139.99, 'FC Bayern  München', 'Puma', 'S', 'Rood', 'Bundesliga'); 

insert into club (club_name) values ('AC Milan');
insert into club (club_name) values ('Borussia Dortmund');
insert into club (club_name) values ('FC Barcelona');
insert into club (club_name) values ('Atletico Madrid');
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
