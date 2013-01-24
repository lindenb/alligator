
drop schema GOA RESTRICT;
create schema GOA;
set schema GOA;

drop INDEX GOA_ASSOC_INDEX1;
drop INDEX GOA_ASSOC_INDEX2;

drop table ASSOCIATION;
create table ASSOCIATION
	(
	id INT not null primary key , --GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1),  
	goterm varchar(60) not null,
	genesymbol varchar(60) not null,
	content clob
	);

create index GOA_ANNOT_INDEX1  ON ASSOCIATION(goterm);
create index GOA_ANNOT_INDEX2  ON ASSOCIATION(genesymbol);
