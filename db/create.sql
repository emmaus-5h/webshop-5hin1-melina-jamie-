--
-- create tables
--

CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
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
CREATE TABLE kleur(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  kleur_name VARCHAR (200)
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

