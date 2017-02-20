CREATE TABLE organizations ( 
	id                   integer DEFAULT nextval('organizations_seq') NOT NULL,
	name                 varchar(100)  ,
	url                  varchar(255)  ,
	CONSTRAINT pk_organizations PRIMARY KEY ( id )
 );

COMMENT ON COLUMN organizations.url IS 'URL for organization, not their data repository';