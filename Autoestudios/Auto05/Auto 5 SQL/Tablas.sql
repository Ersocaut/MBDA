--Tablas
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
living_in INTEGER,
detalle XMLTYPE
);
CREATE TABLE performance(
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