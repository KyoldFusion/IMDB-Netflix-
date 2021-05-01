
CREATE TABLE titles_basic (
  tconst VARCHAR(9) NOT NULL,
  titletype VARCHAR NOT NULL,
  primarytitle VARCHAR NOT NULL,
  originaltitle VARCHAR NOT NULL,
  isadult INT NOT NULL,
  startyear INT NOT NULL,
  endyear INT NOT NULL,
  runtimeminutes INT NOT NULL,
  genres VARCHAR NOT NULL,
  PRIMARY KEY (tconst)
);

CREATE TABLE ratings (
  tconst VARCHAR(9) NOT NULL,
  averagerating FLOAT NOT NULL,
  numvotes VARCHAR NOT NULL,
  FOREIGN KEY (tconst) REFERENCES titles_basic (tconst)
);


CREATE TABLE filterNames (
    nconst VARCHAR(9) NOT NULL,
    primaryname VARCHAR NOT NULL,
    birthyear INT NOT NULL,
    deathyear INT NOT NULL,
    primaryprofession VARCHAR NOT NULL,
    knownfortitles VARCHAR NOT NULL,
    knownfor VARCHAR NOT NULL,
    PRIMARY KEY (nconst)
);

CREATE TABLE filteredPrincipals (
    tconst VARCHAR(9) NOT NULL,
    nconst VARCHAR(9) NOT NULL,
    ordering INT NOT NULL,
    category VARCHAR NOT NULL,
    job VARCHAR NOT NULL,
    characters VARCHAR NOT NULL,
    FOREIGN KEY (tconst) REFERENCES titles_basic (tconst),
    FOREIGN KEY (nconst) REFERENCES filterNames (nconst)
);