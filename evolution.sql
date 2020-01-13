ALTER TABLE Segment
    ADD nbSalle TINYINT (2) DEFAULT 0,
    ADD nbPoste TINYINT (2) DEFAULT 0;

ALTER TABLE Logiciel
    ADD nbInstall TINYINT (2) DEFAULT 0;

ALTER TABLE Poste
    ADD nbLog TINYINT (2) DEFAULT 0;

ALTER TABLE Salle MODIFY nomSalle VARCHAR(30) NOT NULL;

ALTER TABLE Segment MODIFY nomSegment VARCHAR(15) NOT NULL;

ALTER TABLE Installer
    ADD CONSTRAINT UQ_Installer_Logiciel_Poste UNIQUE (nLog, nPoste),
    ADD CONSTRAINT FK_Installer_Poste FOREIGN KEY Installer (nPoste) REFERENCES Poste (nPoste),
    ADD CONSTRAINT FK_Installer_Logiciel FOREIGN KEY Installer (nLog) REFERENCES Logiciel (nLog);

