insert into USERS VALUES (default, 'Gabriele', 'Cesa', 'prova', 'gabriele.cesa@gmail.com', 'a');

insert into USERS VALUES (default, 'Gianmaria', 'Sissa', 'pippo', 'gabriele.cesa@studenti.unitn.it', 'u');

insert into USERS VALUES (default, 'Piermaria', 'Arvani', 'prova', 'piermaria.arvani@studenti.unitn.it', 'r');

insert into USERS VALUES (default, 'Ambrogio', 'Fusella', 'prova', 'pier.mn@hotmail.it', 'u');

insert into USERS VALUES (default, 'Davide', 'Belli', 'prova', 'davide.belli@studenti.unitn.it', 'r');

insert into USERS VALUES (default, 'Francesco', 'Bergoglio', 'prova', 'davide95belli@libero.it', 'u');

insert into USERS VALUES (default, 'Sara', 'Callaioli', 'prova', 'sara.callaioli@studenti.unitn.it', 'u');

insert into USERS VALUES (default, 'Caterina', 'Pomari', 'prova', 'calla95@hotmail.it', 'u');

insert into USERS VALUES (default, 'Luca', 'Ballarini', 'prova', 'gabriele.cesa@hotmail.it', 'u');

insert into USERS VALUES (default, 'John', 'Cesa', 'prova', 'davidebelli95@gmail.com', 'u');


insert into cuisines values (default, 'cinese');
insert into cuisines values (default, 'italiano');
insert into cuisines values (default, 'giapponese');
insert into cuisines values (default, 'francese');
insert into cuisines values (default, 'pizza');
insert into cuisines values (default, 'messicano');
insert into cuisines values (default, 'indiano');
insert into cuisines values (default, 'africano');
insert into cuisines values (default, 'americano');
insert into cuisines values (default, 'steak house');
insert into cuisines values (default, 'pesce');
insert into cuisines values (default, 'vegetariana');

insert into STATES VALUES('Italia');
insert into STATES VALUES('Francia');
insert into STATES VALUES('Regno Unito');
insert into STATES VALUES('United States of America');
insert into STATES VALUES('Spagna');
insert into STATES VALUES('Russia');
insert into STATES VALUES('Germania');
insert into STATES VALUES('Cina');
insert into STATES VALUES('Giappone');
insert into STATES VALUES('Emirati Arabi Uniti');


insert into REGIONS VALUES('Italia', 'Lombardia');
insert into REGIONS VALUES('Italia', 'Trentino Alto-Adige');
insert into REGIONS VALUES('Italia', 'Veneto');
insert into REGIONS VALUES('Italia', 'Friuli Venezia-Giulia');
insert into REGIONS VALUES('Italia', 'Piemonte');
insert into REGIONS VALUES('Italia', 'Lazio');
insert into REGIONS VALUES('Italia', 'Sicilia');
insert into REGIONS VALUES('Italia', 'Basilicata');
insert into REGIONS VALUES('Italia', 'Puglia');
insert into REGIONS VALUES('Italia', 'Molise');
insert into REGIONS VALUES('Regno Unito', 'Inghilterra');
insert into REGIONS VALUES('Regno Unito', 'Galles');
insert into REGIONS VALUES('Regno Unito', 'Scozia');
insert into REGIONS VALUES('Regno Unito', 'Irlanda del Nord');
insert into REGIONS VALUES('Francia', 'Ile de France');
insert into REGIONS VALUES('Francia', 'Bordeaux');
insert into REGIONS VALUES('United States of America', 'Michigan');
insert into REGIONS VALUES('United States of America', 'Washington');
insert into REGIONS VALUES('United States of America', 'New York');
insert into REGIONS VALUES('United States of America', 'Texas');
insert into REGIONS VALUES('Emirati Arabi Uniti', 'Dubai');
insert into REGIONS VALUES('Emirati Arabi Uniti', 'Ajman');
insert into REGIONS VALUES('Emirati Arabi Uniti', 'Abu Dhabi');
insert into REGIONS VALUES('Emirati Arabi Uniti', 'Fujairah');

insert into CITIES VALUES('Italia', 'Lombardia', 'Mantova');
insert into CITIES VALUES('Italia', 'Lombardia', 'Milano');
insert into CITIES VALUES('Italia', 'Trentino Alto-Adige', 'Trento');
insert into CITIES VALUES('Italia', 'Trentino Alto-Adige', 'Bolzano');
insert into CITIES VALUES('Italia', 'Veneto', 'Verona');
insert into CITIES VALUES('Italia', 'Veneto', 'Venezia');
insert into CITIES VALUES('Italia', 'Veneto', 'Padova');
insert into CITIES VALUES('Italia', 'Lazio', 'Roma');
insert into CITIES VALUES('Italia', 'Piemonte', 'Torino');
insert into CITIES VALUES('Italia', 'Friuli Venezia-Giulia', 'Pordenone');
insert into CITIES VALUES('Italia', 'Friuli Venezia-Giulia', 'Trieste');

insert into CITIES VALUES('Emirati Arabi Uniti', 'Dubai', 'Dubai');

insert into CITIES VALUES('Regno Unito', 'Inghilterra', 'Londra');
insert into CITIES VALUES('Regno Unito', 'Inghilterra', 'Liverpool');
insert into CITIES VALUES('Regno Unito', 'Inghilterra', 'Manchester');
insert into CITIES VALUES('Regno Unito', 'Scozia', 'Edimburgo');

insert into CITIES VALUES('Francia', 'Ile de France', 'Parigi');



insert into CITIES VALUES('United States of America', 'New York', 'New York City');


insert into RESTAURANTS VALUES
(
    default,
    'Doolin irish pub',
    'Cena e dopo mezzanotte, Mantova centro, Birra artigianale, Paninoteca',   
    'www.doolinpub.it',
    default,
    default,
    default,
    default,
    default,
    default,
    3,
    3,
    'Via Zambelli 8',
    null,
    null,
    10,
    15,
	'Italia',
	'Lombardia',
	'Mantova'
);


insert into ORARIO VALUES
(
	1,
	'martedì',
	'18:30',
	'01:00'
);

insert into ORARIO VALUES
(
	1,
	'mercoledì',
	'18:30',
	'01:00'
);

insert into ORARIO VALUES
(
	1,
	'giovedì',
	'18:30',
	'01:00'
);

insert into ORARIO VALUES
(
	1,
	'venerdì',
	'18:30',
	'01:00'
);

insert into ORARIO VALUES
(
	1,
	'sabato',
	'18:30',
	'01:00'
);

insert into ORARIO VALUES
(
	1,
	'domenica',
	'18:30',
	'01:00'
);


insert into RESTAURANTS VALUES
(
    default,
    'Feudi',
    'Da asporto, Accetta prenotazioni, Personale di sala',   
    'https://www.facebook.com/I-FEUDI-233088270078751/',
    default,
    default,
    default,
    default,
    default,
    default,
    5,
    7,
    'Via Accademia 11',
    null,
    null,
    10,
    15,
	'Italia',
	'Lombardia',
	'Mantova'
);

insert into ORARIO VALUES
(
	2,
	'martedì',
	'11:00',
	'15:00'
);

insert into ORARIO VALUES
(
	2,
	'martedì',
	'18:00',
	'23:00'
);


insert into ORARIO VALUES
(
	2,
	'mercoledì',
	'11:00',
	'15:00'
);

insert into ORARIO VALUES
(
	2,
	'mercoledì',
	'18:00',
	'23:00'
);
insert into ORARIO VALUES
(
	2,
	'giovedì',
	'11:00',
	'15:00'
);

insert into ORARIO VALUES
(
	2,
	'giovedì',
	'18:00',
	'23:00'
);
insert into ORARIO VALUES
(
	2,
	'venerdì',
	'11:00',
	'15:00'
);

insert into ORARIO VALUES
(
	2,
	'venerdì',
	'18:00',
	'23:00'
);
insert into ORARIO VALUES
(
	2,
	'sabato',
	'11:00',
	'15:00'
);

insert into ORARIO VALUES
(
	2,
	'sabato',
	'18:00',
	'23:00'
);
insert into ORARIO VALUES
(
	2,
	'domenica',
	'11:00',
	'15:00'
);

insert into ORARIO VALUES
(
	2,
	'domenica',
	'18:00',
	'23:00'
);








insert into RESTAURANTS VALUES
(
    default,
    'Pizza&Pizza',
    'Vieni a mangiare da noi la pizza, è buona!',   
    'www.ma_che_ne_so.it',
    2,
    10.0,
    10.0,
    10.0,
    10.0,
    10.0,
    null,
    1,
    'via Taramelli 24',
    12345678.0,
    12345678.0,
    2,
    50,
    'Italia',
    'Trentino Alto-Adige',
    'Trento'
);

insert into RESTAURANTS VALUES
(
    default,
    'Doolin irish pub',
    'Cena e dopo mezzanotte, Mantova centro, Birra artigianale, Paninoteca',   
    'www.doolinpub.it/#_=_',
    default,
    default,
    default,
    default,
    default,
    default,
    3,
    3,
    'Via Zambelli 8, Mantova, Italia',
    null,
    null,
    10,
    15,
	'Italia',
	'Lombardia',
	'Mantova'
);

insert into RESTAURANTS VALUES
(
    default,
    'Gelato&Gelato',
    'Vieni a mangiare da noi il gelato, è buono!\n(Non siamo in alcun modo associati con Pizza&Pizza)',   
    'www.ma_che_ne_so_io.it',
    3,
    15.0,
    14.0,
    13.0,
    12.0,
    11.0,
    null,
    1,
    'via Taramelli 14',
    0.788036490359,
    0.18845762622895723126,
    1,
    100,
    'Italia',
    'Lombardia',
    'Mantova'
);

insert into RESTAURANTS VALUES
(
    default,
    'VivaIlKebab',
    'Vieni a mangiare da noi il kebab, è buono!',   
    'www.ma_che_buono_il_kebab.it',
    4,
    13.5,
    17.0,
    15.0,
    10.0,
    18.0,
    null,
    1,
    'via Dalle Balle 1',
    0.793499301105,
    0.160401622564,
    4,
    10,
    'Italia',
    'Lombardia',
    'Milano'
);


insert into RESTAURANTS VALUES
(
    default,
    'SushiRadioattivo',
    'Assaggia il nostro sushi speciale!',   
    'www.sushi.rom',
    8,
    37.5,
    46.0,
    43.0,
    30.0,
    28.0,
    null,
    1,
    'via Cernobyl 1986',
    0.793499301405,
    0.160401622964,
    12,
    45,
    'Italia',
    'Lombardia',
    'Milano'
);




insert into RESTAURANTS_CUISINES values(1, 3);
insert into RESTAURANTS_CUISINES values(1, 6);
insert into RESTAURANTS_CUISINES values(2, 3);

