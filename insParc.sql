INSERT INTO
    Segment (indIP, nomSegment, etage)
VALUES
    ('130.120.80', 'BRIN RDC'),
    ('130.120.81', 'BRIN 1er étage'),
    ('130.120.82', 'BRIN 2e étage');
INSERT INTO
    Salle (nSalle, nomSalle, nbPoste, indIP)
VALUES
    ('s01', 'Salle 1', 3, '130.120.80'),
    ('s02', 'Salle 1', 2, '130.120.80'),
    ('s03', 'Salle 1', 2, '130.120.80'),
    ('s11', 'Salle 11', 2, '130.120.81'),
    ('s12', 'Salle 12', 1, '130.120.81'),
    ('s21', 'Salle 21', 2, '130.120.82'),
    ('s22', 'Salle 22', 0, '130.120.83'),
    ('s23', 'Salle 23', 0, '130.120.83');
INSERT INTO
    Poste (nPoste, nomPoste, indIP, ad, typePoste, nSalle)
VALUES
    ('p1', 'Poste 1', '130.120.80', '01', 'TX', 's01'),
    (
        'p2',
        'Poste 2',
        '130.120.80',
        '02',
        'UNIX',
        's01'
    ),
    ('p3', 'Poste 3', '130.120.80', '03', 'TX', 's01'),
    (
        'p4',
        'Poste 4',
        '130.120.80',
        '04',
        'PCWS',
        's02'
    ),
    (
        'p5',
        'Poste 5',
        '130.120.80',
        '05',
        'PCWS',
        's02'
    ),
    (
        'p6',
        'Poste 6',
        '130.120.80',
        '06',
        'UNIX',
        's03'
    ),
    ('p7', 'Poste 7', '130.120.80', '07', 'TX', 's03'),
    (
        'p8',
        'Poste 8',
        '130.120.81',
        '01',
        'UNIX',
        's11'
    ),
    ('p9', 'Poste 9', '130.120.81', '02', 'TX', 's11'),
    (
        'p10',
        'Poste 10',
        '130.120.81',
        '03',
        'UNIX',
        's12'
    ),
    (
        'p11',
        'Poste 11',
        '130.120.82',
        '01',
        'PCNT',
        's21'
    ),
    (
        'p12',
        'Poste 12',
        '130.120.82',
        '02',
        'PCWS',
        's21'
    );
INSERT INTO
    Logiciel (nLog, nomLog, dateAch, version, typeLog, prix)
VALUES
    (
        'log1',
        'Oracle 6',
        '1995-05-13',
        '6.2',
        'UNIX',
        3000
    ),
    (
        'log2',
        'Oracle 8',
        '1999-09-15',
        '8i',
        'UNIX',
        5600
    ),
    (
        'log3',
        'SQL Server',
        '1998-04-12',
        '7',
        'UNIX',
        2700
    ),
    (
        'log4',
        'Front Page',
        '1997-06-03',
        '5',
        'UNIX',
        500
    ),
    (
        'log5',
        'WinDev',
        '1997-05-12',
        '5',
        'UNIX',
        750
    ),
    (
        'log6',
        'SQL*Net',
        '1995-05-13',
        '2.0',
        'UNIX',
        500
    ),
    (
        'log7',
        'I.I.S.',
        '1995-05-13',
        '2',
        'UNIX',
        810
    ),
    (
        'log8',
        'DreamWeaver',
        '1995-05-13',
        '2.0',
        'UNIX',
        1400
    );
