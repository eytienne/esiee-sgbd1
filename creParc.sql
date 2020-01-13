CREATE TABLE Segment (
    indIP VARCHAR(11) PRIMARY KEY,
    nomSegment VARCHAR(20) NOT NULL,
    etage TINYINT(1)
);

CREATE TABLE Salle (
    nSalle VARCHAR(7) PRIMARY KEY,
    nomSalle VARCHAR(20) NOT NULL,
    nbPoste TINYINT(2),
    indIP VARCHAR(11)
);

CREATE TABLE Poste (
    nPoste VARCHAR(7) PRIMARY KEY,
    nomPoste VARCHAR(20) NOT NULL,
    indIP VARCHAR(11),
    ad VARCHAR(3) CHECK CAST(ad AS INTEGER) as a AND a >= 0 AND a <= 255,
    typePoste VARCHAR(9),
    nSalle VARCHAR(7)
);

CREATE TABLE Logiciel (
    nLog VARCHAR(5) PRIMARY KEY,
    nomLog VARCHAR(20),
    dateAch DATETIME,
    version VARCHAR(7),
    typeLog VARCHAR(9),
    prix DECIMAL(6,2) CHECK prix >= 0
);

CREATE TABLE Installer (
    numIns INTEGER(5) PRIMARY KEY,
    nPoste VARCHAR(7),
    nLog VARCHAR(5),
    dateIns TIMESTAMP DEFAULT NOW(),
    delai SMALLINT
);

CREATE TABLE Types (
    typeLP VARCHAR(9) PRIMARY KEY,
    nomType VARCHAR(20)
);

