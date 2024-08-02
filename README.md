# SQL_LAB1
PostgreSQL tutorials 
For this lab you are asked to create a database for poltics 
GIVEN SCHEMA:
tates (statecode: char(2), population_2010: integer, population_2000: integer, population_1950: integer,
population_1900: integer, landarea: float, name: char(20), admitted_to_union: date)
statecode is the primary key
counties (name: char(30), statecode: char(2), population_1950: integer, population_2010: integer)
statecode references states(statecode)
senators (statecode: char(2), name: char(40), affiliation: char(1), took_office: integer, born: integer)
statecode references states(statecode)
name is the primary key
committees (id: char(5), parent_committee: char(5), name: char(200), chairman: char(40),
ranking_member: char(40))
id is the primary key
parent_committee references committees(id)
chairman references senators(name)
ranking_member references senators(name)
