/* Tablas */
CREATE TABLE band(
band_no integer NOT NULL,
band_name VARCHAR(20), 
band_home integer NOT NULL,
band_type VARCHAR(10),
b_date date,
band_contact integer
);
CREATE TABLE concert(
concert_no integer NOT NULL,
concert_venue VARCHAR(20),
concert_in integer,
con_date date,
concert_orgniser integer
);
CREATE TABLE composer(
comp_no integer NOT NULL,
comp_is integer NOT NULL,
comp_type VARCHAR(10)
);
CREATE TABLE composition (
c_no integer NOT NULL,
comp_date date,
c_tittle varchar(40) NOT NULL,
c_in integer
);
CREATE TABLE has_composed(
cmpr_no INTEGER NOT NULL,
cmpn_no INTEGER NOT NULL
);
CREATE TABLE musician(
m_no integer NOT NULL,
m_name VARCHAR(20),
born date,
died date,
born_in INTEGER,
living_in INTEGER
);
CREATE TABLE performances(
pfrmnc_no INTEGER NOT NULL,
gave INTEGER,
performed INTEGER,
conducted_by INTEGER,
performed_in INTEGER
);
CREATE TABLE performer(
perf_no INTEGER NOT NULL,
perf_is INTEGER,
instrumemt VARCHAR(10) NOT NULL,
perf_type VARCHAR(10)
);
CREATE TABLE place(
place_no INTEGER NOT NULL,
place_town VARCHAR(20),
place_country VARCHAR(20)
);
CREATE TABLE plays_in(
player INTEGER NOT NULL,
band_id INTEGER NOT NULL
);


/* Primarias*/
ALTER TABLE band ADD CONSTRAINT PK_band
    PRIMARY KEY (band_no);
ALTER TABLE composer ADD CONSTRAINT PK_composer
    PRIMARY KEY (comp_no);
ALTER TABLE composition ADD CONSTRAINT PK_compsition
    PRIMARY KEY (c_no);
ALTER TABLE has_composed ADD CONSTRAINT PK_has_composed
    PRIMARY KEY (cmpr_no,cmpn_no);
ALTER TABLE musician ADD CONSTRAINT PK_musician
    PRIMARY KEY (m_no);
ALTER TABLE performance ADD CONSTRAINT PK_performance
    PRIMARY KEY (pfrmnc_no);
ALTER TABLE performer ADD CONSTRAINT PK_performer
    PRIMARY KEY (perf_no);
ALTER TABLE place ADD CONSTRAINT PK_place
    PRIMARY KEY (place_no);
ALTER TABLE plays_in ADD CONSTRAINT PK_plays_in
    PRIMARY KEY (player, band_id);
ALTER TABLE concert ADD CONSTRAINT PK_concert_no
    PRIMARY KEY (concert_no);
    
    
/* Unicas*/
ALTER TABLE band ADD CONSTRAINT UK_band
    UNIQUE (band_name, band_contact);
ALTER TABLE composition ADD CONSTRAINT UK_composition
    UNIQUE (c_tittle);

    
/* Foraneas */
ALTER TABLE band ADD CONSTRAINT FK_band_home
    FOREIGN KEY (band_home)
        REFERENCES place (place_no);
ALTER TABLE composer ADD CONSTRAINT FK_comp_is
    FOREIGN KEY (comp_is)
        REFERENCES musician (m_no);
ALTER TABLE composition ADD CONSTRAINT FK_c_in
    FOREIGN KEY (c_in)
        REFERENCES place (place_no);
ALTER TABLE concert ADD CONSTRAINT FK_concert_in
    FOREIGN KEY (concert_in)
        REFERENCES place (place_no);
ALTER TABLE concert ADD CONSTRAINT FK_concert_orgniser
    FOREIGN KEY (concert_orgniser)
        REFERENCES musician (m_no);
ALTER TABLE has_composed ADD CONSTRAINT FK_cmpr_no
    FOREIGN KEY (cmpr_no)
        REFERENCES composer (comp_no);
ALTER TABLE has_composed ADD CONSTRAINT FK_cmpn_no
    FOREIGN KEY (cmpn_no)
        REFERENCES composition (c_no);
ALTER TABLE musician ADD CONSTRAINT FK_born_in
    FOREIGN KEY (born_in)
        REFERENCES place (place_no);
ALTER TABLE musician ADD CONSTRAINT FK_living_in
    FOREIGN KEY (living_in)
        REFERENCES place (place_no);
ALTER TABLE performances ADD CONSTRAINT FK_gave
    FOREIGN KEY (gave)
        REFERENCES band (band_no);
ALTER TABLE performances ADD CONSTRAINT FK_performed
    FOREIGN KEY (performed)
        REFERENCES composition (c_no);
ALTER TABLE performances ADD CONSTRAINT FK_conducted_by
    FOREIGN KEY (conducted_by)
        REFERENCES musician (m_no);
ALTER TABLE performances ADD CONSTRAINT FK_performed_in
    FOREIGN KEY (performed_in)
        REFERENCES concert (concert_no);
ALTER TABLE performer ADD CONSTRAINT FK_perf_is
    FOREIGN KEY (perf_is)
        REFERENCES musician (m_no);
ALTER TABLE plays_in ADD CONSTRAINT FK_player
    FOREIGN KEY (player)
        REFERENCES performer (perf_no);
ALTER TABLE plays_in ADD CONSTRAINT FK_band_id
    FOREIGN KEY (band_id)
        REFERENCES band (band_no);


/* PoblarOk */
--Band
insert into band values (1, 'ROP', 1, 'classical', NULL, 3);
insert into band values (2, 'Zazio', 2, 'classical', '11/2/2018', 2);
insert into band values (3, 'Realbridge', 3, 'classical', '3/11/2019', 3);
insert into band values (4, 'Katz', 4, 'classical', '4/5/2019', 4);
insert into band values (5, 'Bubblemix', 5, 'classical', '9/5/2018', 5);
insert into band values (6, 'Quinu', 6, 'jazz', '4/18/2019', 6);
insert into band values (7, 'Photobean', 7, 'jazz', '2/9/2019', 7);
insert into band values (8, 'Photobug', 8, 'classical', '4/12/2019', 8);
insert into band values (9, 'Rhynoodle', 9, 'jazz', '12/2/2018', 9);
insert into band values (10, 'Kaymbo', 10, 'jazz', '12/0/2018', 10);


--Composer
insert into composer values (1, 1, 'clasical');
insert into composer values (2, 3, 'clasical');
insert into composer values (3, 2, 'clasical');
insert into composer values (4, 7, 'clasical');
insert into composer values (5, 1, 'clasical');
insert into composer values (6, 4, 'clasical');
insert into composer values (7, 7, 'clasical');
insert into composer values (8, 2, 'clasical');
insert into composer values (9, 9, 'clasical');


--Composition
insert into composition values (1, '10/3/2012', 'High Plains Drifter', 1);
insert into composition values (2, '2/4/2019', 'Beautiful Losers', 2);
insert into composition values (3, '8/3/2006', 'My Sweet Pepper Land', 3);
insert into composition values (4, '2/27/2015', 'Oki''s Movie (Ok-hui-ui yeonghwa)', 4);
insert into composition values (5, '7/22/2017', 'Lady of Chance, A', 5);
insert into composition values (6, '3/9/2013', 'Torch Song', 6);
insert into composition values (7, '8/10/2007', 'Whirlygirl', 7);
insert into composition values (8, '2/13/2013', 'Luther', 8);
insert into composition values (9, '11/15/2007', 'Miss Firecracker', 9);
insert into composition values (10, '8/1/2014', 'Come Back to the Five and Dime, Jimmy Dean, Jimmy Dean', 10);


--Concert
insert into concert values (1, '0084 Anderson Plaza', 1, '2/19/2007', 1);
insert into concert values (2, '8 Elmside Point', 2, '9/30/2006', 2);
insert into concert values (3, '95329 Ruskin Junction', 3, '10/28/2014', 3);
insert into concert values (4, '64 Schiller Park', 4, '10/2/2010', 4);
insert into concert values (5, '1331 Rieder Drive', 5, '8/4/2017', 5);
insert into concert values (6, '1659 Dawn Parkway', 6, '6/9/2012', 6);
insert into concert values (7, '75728 Maple Plaza', 7, '7/13/2001', 7);
insert into concert values (8, '5 Emmet Alley', 8, '4/2/2013', 8);


--Has Composed
insert into has_composed values (1, 3);
insert into has_composed values (2, 4);
insert into has_composed values (3, 5);
insert into has_composed values (4, 6);
insert into has_composed values (5, 7);
insert into has_composed values (6, 8);
insert into has_composed values (7, 9);
insert into has_composed values (8, 10);
insert into has_composed values (9, 11);
insert into has_composed values (10, 12);


--Musician
insert into musician values (1, 'Hilda Butfield', '10/3/2017', '6/8/2014', 2, 4);
insert into musician values (2, 'Vanny Niven', '4/3/2010', '11/2/2012', 3, 5);
insert into musician values (3, 'Moll Minchinton', '5/2/2015', '3/8/2013', 4, 6);
insert into musician values (4, 'Nerti Lindsley', '4/7/2019', '9/10/2016', 5, 7);
insert into musician values (5, 'Haily Learmond', '3/1/2016', '1/7/2015', 6, 8);
insert into musician values (6, 'Tabor Stevens', '8/10/2011', '4/1/2013', 7, 9);
insert into musician values (7, 'Drud Whiff', '8/8/2007', '8/3/2014', 8, 10);
insert into musician values (8, 'Tyler Huby', '6/5/2017', '5/8/2015', 9, 11);
insert into musician values (9, 'Averell Tressler', '3/2/2009', '12/8/2014', 10, 12);
insert into musician values (10, 'Sammie Bennough', '6/7/2015', '1/3/2013', 11, 13);


--Performance
insert into performances values (1, 2, 5, 2, 4);
insert into performances values (2, 3, 6, 3, 5);
insert into performances values (3, 4, 7, 4, 6);
insert into performances values (4, 5, 8, 5, 7);
insert into performances values (5, 6, 9, 6, 8);
insert into performances values (6, 7, 10, 7, 9);
insert into performances values (7, 8, 11, 8, 10);
insert into performances values (8, 9, 12, 9, 11);
insert into performances values (9, 10, 13, 10, 12);
insert into performances values (10, 11, 14, 11, 13);


--Performer
insert into performer values (1, 4, 'violin', 'classical');
insert into performer values (2, 5, 'viola', 'jazz');
insert into performer values (3, 6, 'banjo', 'jazz');
insert into performer values (4, 7, 'viola', 'classical');
insert into performer values (5, 8, 'guitar', 'classical');
insert into performer values (6, 9, 'trumpet', 'jazz');


--Place
insert into place (place_no, place_town, place_country) values (1, 'Lélouma', 'Guinea');
insert into place (place_no, place_town, place_country) values (2, 'Portarlington', 'Ireland');
insert into place (place_no, place_town, place_country) values (3, 'Shijiazhuang', 'China');
insert into place (place_no, place_town, place_country) values (4, 'Krajan', 'Indonesia');
insert into place (place_no, place_town, place_country) values (5, 'Sanfang', 'China');
insert into place (place_no, place_town, place_country) values (6, 'Lingbei', 'China');
insert into place (place_no, place_town, place_country) values (7, 'Kedungasem', 'Indonesia');
insert into place (place_no, place_town, place_country) values (8, 'Montauban', 'France');
insert into place (place_no, place_town, place_country) values (9, 'Frakulla e Madhe', 'Albania');
insert into place (place_no, place_town, place_country) values (10, 'Chaoyang', 'China');
insert into place (place_no, place_town, place_country) values (11, 'Hagondange', 'France');
insert into place (place_no, place_town, place_country) values (12, 'Birq?n', 'Palestinian Territory');
insert into place (place_no, place_town, place_country) values (13, 'Velestíno', 'Greece');
insert into place (place_no, place_town, place_country) values (14, 'Üydzen', 'Mongolia');
insert into place (place_no, place_town, place_country) values (15, 'Boulogne-Billancourt', 'France');
insert into place (place_no, place_town, place_country) values (16, 'Lidingö', 'Sweden');
insert into place (place_no, place_town, place_country) values (17, 'Podol’sk', 'Russia');
insert into place (place_no, place_town, place_country) values (18, 'Church End', 'United Kingdom');
insert into place (place_no, place_town, place_country) values (19, 'Iranduba', 'Brazil');
insert into place (place_no, place_town, place_country) values (20, 'San Jose', 'Mexico');


--Plays in
insert into plays_in values (1, 2);
insert into plays_in values (2, 3);
insert into plays_in values (3, 4);
insert into plays_in values (4, 5);
insert into plays_in values (5, 6);
insert into plays_in values (6, 7);
insert into plays_in values (7, 8);
insert into plays_in values (8, 9);


/* PoblarNoOk*/
--Tratare de insertar un lugar con un identificador que ya existe
insert into place VALUES (50, 'Malmo', 'Sweden');
--Tratare de insertar una banda con un identificador que ya existe
insert into band values (1, 'AASO', 2, 'classical', NULL, 2);
--Tratare de insertar una banda con un contacto que ya existe
insert into band values (2, 'THE J Bs', 1, 'classical', NULL,  3);