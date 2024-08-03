CREATE TABLE states
  (
     statecode         CHAR(2) PRIMARY KEY,
     population_2010   INTEGER,
     population_2000   INTEGER,
     population_1950   INTEGER,
     population_1900   INTEGER,
     landarea          FLOAT,
     name              CHAR(20),
     admitted_to_union DATE
  );

CREATE TABLE counties
  (
     name            CHAR(30),
     statecode       CHAR(2),
     population_1950 INTEGER,
     population_2010 INTEGER,
     FOREIGN KEY(statecode) REFERENCES states(statecode)
  );

CREATE TABLE senators
  (
     statecode   CHAR(2),
     name        CHAR(40) PRIMARY KEY,
     affiliation CHAR(1),
     took_office INTEGER,
     born        INTEGER,
     FOREIGN KEY(statecode) REFERENCES states(statecode)
  );

CREATE TABLE committees
  (
     id               CHAR(5) PRIMARY KEY,
     parent_committee CHAR(5),
     name             CHAR(200),
     chairman         CHAR(40),
     ranking_member   CHAR(40),
     FOREIGN KEY(parent_committee) REFERENCES committees(id),
     FOREIGN KEY(chairman) REFERENCES senators(name),
     FOREIGN KEY(ranking_member) REFERENCES senators(name)
  ); 

SELECT population 
FROM state_fact 
WHERE state_name = 'Alabama' 
AND census_year = 2010;
AND population IS NOT NULL;
