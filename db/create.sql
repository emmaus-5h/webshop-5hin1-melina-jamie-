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

CREATE TABLE product_kleur (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER,
  kleur_id INTEGER
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

insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('AC Milan 1997/98','Associazione Calcio Milan slaagde er niet in om hun succesvolle vorige seizoen (1998-1999) te herhalen. Ze slaagden er niet in de Serie A-titel te verdedigen en eindigden op de 3e plaats achter kampioen Lazio en nummer twee Juventus, en crashten uit de Champions League na een matige prestatie in de eerste groepsfase. Milan eindigde zelfs als laatste in de groep en kwalificeerde zich niet eens voor de rest van de UEFA Cup.', '1029874', 139.95,'AC Milan', 'Puma', 'XS', 'Serie A');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('Borussia Dortmund', 'Dortmund slaagde er niet in zich te plaatsen voor de groepsfase van de Champions League en volgde daarop met een teleurstellende zesde plaats in de Bundesliga. De slechte vorm van de club was voornamelijk het gevolg van de afwezigheid van spelmaker Tomáš Rosický gedurende vrijwel de helft van het seizoen. De slechte vorm leidde tot het ontslag van coach Matthias Sammer, terwijl de economie van de club steeds meer onder druk kwam te staan.', '1029980', 115.00, 'Borussia Dortmund', 'Puma', 'S', 'Bundesliga');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('Fc Barcelona', 'Futbol Club Barcelona is een professionele voetbalclub gevestigd in Barcelona, Catalonië, Spanje, die uitkomt in La Liga, de topklasse van het Spaanse voetbal. Opgericht in 1899 door een groep Zwitserse, Catalaanse, Duitse en Engelse voetballers onder leiding van Joan Gamper, is de club een symbool geworden van de Catalaanse cultuur en het Catalanisme. In tegenstelling tot veel andere voetbalclubs bezitten en exploiteren de supporters Barcelona. Het is het derde meest waardevolle sportteam ter wereld, met een waarde van 5,51 miljard dollar, en de vierde rijkste voetbalclub ter wereld in termen van inkomsten, met een jaaromzet van 582,1 miljoen euro. Het officiële volkslied van Barcelona is de "Cant del Barça", geschreven door Jaume Picas en Josep Maria Espinàs. Barcelona speelt traditioneel in donkere tinten blauw en granaatkleurige strepen, vandaar de bijnaam Blaugrana.', '1029760', 135.00, 'FC Barcelona', 'Adidas', 'M', 'La Liga');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('Atletico Madrid', 'Het seizoen 1997–1998 was het 92e seizoen in de geschiedenis van Atlético Madrid en hun 63e seizoen in La Liga, de hoogste divisie van het Spaanse voetbal. Atlético Madrid slaagde er niet in de titel die ze in 1996 hadden gewonnen terug te winnen en eindigde het seizoen op de 7e plaats. Een van de hoogtepunten van het seizoen was de run van de club in de UEFA Cup en bereikte de halve finales. Aanvaller Christian Vieri was de topscorer van de club en scoorde 24 doelpunten in La Liga (hij eindigde als topscorer van de competitie en ontving de Pichichi-trofee) en 29 in alle competities, maar stapte over naar Lazio (die Atlético uit de UEFA Cup sloeg) aan het einde van het seizoen.', '1029654', 134.99, 'Atletico Madrid', 'Puma', 'M', 'La Liga');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('Arsenal', 'Het seizoen 1997-1998 was het 100ste seizoen van competitief voetbal gespeeld door Arsenal. Onder leiding van Arsène Wenger in zijn eerste volledige seizoen, beëindigde de club de campagne door voor het eerst in zeven jaar het kampioenschap te winnen. In het Wembley Stadium versloeg Arsenal Newcastle United met 2-0 in de FA Cup-finale van 1998 om de competitie te winnen en een binnenlandse dubbel te voltooien - de tweede in de geschiedenis van de club en de eerste sinds 1970-71. Arsenal verliet de League Cup in de halve finale van Chelsea en verloor op totaalscore van PAOK in de eerste ronde van de UEFA Cup.', '1029433', 169.99, 'Arsenal', 'Puma', 'S', 'Premier League');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('Juventus', 'In het seizoen 2001/2002 kende Juventus een solide prestatie, eindigend als tweede in de Serie A achter AS Roma, met 69 punten behaald in 34 wedstrijden. Hoewel ze de Coppa Italia halve finales bereikten en in de UEFA Champions League de kwartfinales haalden, waarbij ze onder meer clubs als Newcastle United en Bayer Leverkusen versloegen, werden ze uiteindelijk uitgeschakeld door Real Madrid. Cruciale spelers zoals Alessandro Del Piero, David Trezeguet, Gianluigi Buffon en Pavel Nedvěd, onder leiding van coach Marcello Lippi, waren de ruggengraat van het team gedurende het seizoen, wat resulteerde in een seizoen van competitieve prestaties, zij het met enigszins gemengde resultaten in de belangrijkste competities.', '1029258', 139.99, 'Juventus', 'Adidas', 'S', 'Serie A');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('Fiorentina', 'In het seizoen 1995/1996 beleefte Associazione Calcio Fiorentina zijn beste seizoen sinds lange tijd en eindigde op een gedeelde derde plaats in de Serie A, plus het winnen van de Coppa Italia na een duidelijke dubbele overwinning op Atalanta in de finale. Gesterkt door Stefan Schwarz en Michele Serena kon Fiorentina minder goals incasseren dan voorheen, maar hoewel Rui Costa en Gabriel Batistuta hun speciale samenwerking voortzetten, kwamen de goals niet zo gemakkelijk als het jaar ervoor.', '1029132', 159.99, 'Fiorentina', 'Puma', 'S', 'Serie A');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('AFC Ajax', 'In het seizoen 2011/2012 kwam AFC Ajax uit in de Nederlandse Eredivisie en opende het als regerend landskampioen het nieuwe seizoen met de strijd om de Johan Cruijff Schaal tegen FC Twente. Daarnaast nam de club deel aan de KNVB beker. Daarin werden ze in de 1/8 finale verslagen door AZ. In de wedstrijd braken problemen uit doordat een Ajax supporter, doelman Esteban van AZ belaagde. De wedstrijd werd gestaakt en overgespeeld op 19 januari. In deze tweede wedstrijd werd het 2-3 en ging AZ door naar de kwartfinale. Ook speelde Ajax in poule D van de groepsfase van de UEFA Champions League 2011/12 en nam het deel aan de UEFA Europa League 2011/12. Hierin werd het uitgeschakeld door Manchester United. AFC Ajax werd op woensdag 2 mei 2012 voor de 31ste keer landskampioen van Nederland.', '1029075', 119.99, 'AFC Ajax', 'Puma', 'S', 'Eredivisie');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('Manchester United', 'In het seizoen 2010/2011 kende Manchester United een succesvolle campagne, met verschillende hoogtepunten en prestaties. Onder leiding van manager Sir Alex Ferguson wonnen ze de Premier League-titel, waarbij ze Chelsea voorbleven en hun 19e landstitel behaalden, waarmee ze het record van Liverpool evenaarden. Het seizoen werd ook gekenmerkt door een sterke prestatie in de UEFA Champions League, waar Manchester United de finale bereikte. Ze versloegen onderweg teams als Chelsea en Schalke 04, maar verloren uiteindelijk van FC Barcelona in de finale. Belangrijke spelers in het team waren onder meer Wayne Rooney, Ryan Giggs, en Nemanja Vidić, die cruciale bijdragen leverden aan het succes van het team. Over het algemeen was het seizoen 2010/2011 voor Manchester United een periode van aanzienlijke triomf, zowel nationaal als op het Europese toneel.', '1028760', 124.99, 'Manchester United', 'Puma', 'S', 'Premier League');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('AS Roma', 'Het seizoen 2015–16 was het 88ste seizoen van Associazione Sportiva Roma en het 87ste seizoen in de hoogste klasse van het Italiaanse voetbal. Het team begon het seizoen in de Serie A, de Coppa Italia en de Champions League, maar werd in de laatste twee competities uitgeschakeld in de achtste finales. Na een serie van 14 overwinningen en 3 gelijke spelen in hun laatste 17 wedstrijden slaagde Roma erin om als derde te eindigen, waarmee ze zich kwalificeerden voor de play-offronde van de UEFA Champions League 2016/17.', '1028640', 135.99, 'AS Roma', 'Puma', 'S', 'Serie A');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('Aston Villa', 'In het seizoen 1982/1983 kende Aston Villa een opmerkelijke campagne, waarin ze een sterke prestatie leverden in de Football League First Division, de toenmalige hoogste divisie in het Engelse voetbal. Onder leiding van manager Tony Barton eindigde Aston Villa op de tweede plaats in de competitie, achter kampioen Liverpool. Dit was een indrukwekkende prestatie, aangezien Liverpool destijds een van de meest dominante clubs in het Engelse voetbal was. Belangrijke spelers in het team waren onder meer Gary Shaw, Peter Withe en Dennis Mortimer, die allen cruciale bijdragen leverden aan het succes van het team. Aston Villa behaalde ook succes in de Europacup I, nu bekend als de UEFA Champions League, waar ze de finale bereikten. In de finale, gespeeld op 26 mei 1982 in Rotterdam, versloeg Aston Villa het Duitse Bayern München met 1-0, dankzij een doelpunt van Peter Withe. Dit resulteerde in de eerste Europese trofee voor Aston Villa in de clubgeschiedenis. Over het algemeen was het seizoen 1982/1983 een historische periode voor Aston Villa, met indrukwekkende prestaties zowel in de competitie als op het Europese toneel.','1028560', 142.99, 'Aston Villa', 'Puma', 'S', 'Premier League');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('Chelsea', 'In het seizoen 2010/2011 behaalde Chelsea onder leiding van manager Carlo Ancelotti de tweede plaats in de Premier League, achter Manchester United. Belangrijke spelers zoals Didier Drogba en Frank Lampard waren cruciaal voor het team. Ze bereikten ook de finale van de UEFA Champions League, waar ze Bayern München versloegen na een gelijkspel en strafschoppen, waarmee ze voor het eerst de trofee wonnen. Het seizoen werd gekenmerkt door sterke prestaties en vastberadenheid binnen het team, waardoor het een van de meest gedenkwaardige seizoenen in de geschiedenis van Chelsea werd.', '1028345', 114.99, 'Chelsea', 'Puma', 'S', 'Premier League');
insert into products (name, description, code, price, club_id, merk_id, maat_id, competitie_id) values ('FC Bayern München', 'Bayern München stelde Werder Bremen-manager Otto Rehhagel aan om te proberen de teleurstellende zesde plaats van de club van vorig seizoen te verbeteren. Verschillende spelers, waaronder Jürgen Klinsmann en Andreas Herzog, werden gekocht en algemeen werd verwacht dat München de oppositie zou laten rollen; maar vanaf het allereerste begin botste Rehhagel met het team en de teamomgeving, zijn vastberaden en excentrieke manieren, onverenigbaar met die van Bayern. Bovendien veroorzaakten Rehhagels ouderwetse tactiek en betutteling van de spelers grote antipathie in het Bayern-team, vooral van Klinsmann, die nooit een kans liet schieten om Rehhagel te bekritiseren. In de tweede seizoenshelft viel het team uiteen. Rehhagel werd drie weken voordat ze in de UEFA Cup-finale zouden spelen, afgezet na een teleurstellend einde van hun competitiewedstrijd. Hij werd vervangen door Franz Beckenbauer, die het team naar de overwinning in de UEFA Cup leidde.', '1028206', 139.99, 'FC Bayern  München', 'Puma', 'S', 'Bundesliga'); 

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

insert into product_kleur (product_id, kleur_id) values (1, 2);
insert into product_kleur (product_id, kleur_id) values (1, 3);
insert into product_kleur (product_id, kleur_id) values (2, 5);
insert into product_kleur (product_id, kleur_id) values (2, 1);
insert into product_kleur (product_id, kleur_id) values (3, 7);
insert into product_kleur (product_id, kleur_id) values (3, 3);
insert into product_kleur (product_id, kleur_id) values (3, 8);
insert into product_kleur (product_id, kleur_id) values (4, 2);
insert into product_kleur (product_id, kleur_id) values (4, 3);
insert into product_kleur (product_id, kleur_id) values (5, 5);
insert into product_kleur (product_id, kleur_id) values (5, 8);
insert into product_kleur (product_id, kleur_id) values (6, 1);
insert into product_kleur (product_id, kleur_id) values (6, 2);
insert into product_kleur (product_id, kleur_id) values (7, 9);
insert into product_kleur (product_id, kleur_id) values (7, 2);
insert into product_kleur (product_id, kleur_id) values (8, 1);
insert into product_kleur (product_id, kleur_id) values (8, 7);
insert into product_kleur (product_id, kleur_id) values (9, 3);
insert into product_kleur (product_id, kleur_id) values (9, 2);
insert into product_kleur (product_id, kleur_id) values (10, 3);
insert into product_kleur (product_id, kleur_id) values (10, 2);
insert into product_kleur (product_id, kleur_id) values (11, 3);
insert into product_kleur (product_id, kleur_id) values (11, 7);
insert into product_kleur (product_id, kleur_id) values (12, 8);
insert into product_kleur (product_id, kleur_id) values (12, 2);
insert into product_kleur (product_id, kleur_id) values (12, 3);
insert into product_kleur (product_id, kleur_id) values (13, 3);
insert into product_kleur (product_id, kleur_id) values (13, 2);
insert into product_kleur (product_id, kleur_id) values (13, 8);

insert into competities (competitie_name) values ('Eredivisie');
insert into competities (competitie_name) values ('Premier league');
insert into competities (competitie_name) values ('La liga');
insert into competities (competitie_name) values ('Serie A');
insert into competities (competitie_name) values ('Bundesliga');
insert into competities (competitie_name) values ('Ligue 1');
