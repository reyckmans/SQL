DROP TABLE navigationsystem;	

CREATE TABLE navigationsystem(
	ID INTEGER PRIMARY KEY,
	Satnavsystem TEXT,
	Countryoforigin INTEGER,
	Numberofsatellites INTEGER,
	Since TEXT,
	Status TEXT,
	FOREIGN KEY (Countryoforigin) REFERENCES country(ID)
);

CREATE TABLE country(
	ID INTEGER,
	countryname TEXT
	
);


INSERT into country values (0, 'United States');
INSERT into country values (1, 'Russia');
INSERT into country values (2, 'China');
INSERT into country values (3, 'European Union');

insert into navigationsystem values (0, 'gps', 0, 24, 1967, 'Operational');
insert into navigationsystem values (1, 'glonass', 1, 26, 1982, 'Operational');
insert into navigationsystem values (2, 'BeiDou', 2, 35, 2000, 'Operational');
insert into navigationsystem values (3, 'galileo', 3, 30, 2011, 'Service Restored');