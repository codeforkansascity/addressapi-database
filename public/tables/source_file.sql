CREATE TABLE source_file ( 
	id                   integer DEFAULT nextval('source_file_seq') NOT NULL,
	name                 varchar(100)  ,
	organization_id      integer  ,
	source_file_type_id  integer  ,
	url                  varchar(255)  ,
	CONSTRAINT pk_source_file PRIMARY KEY ( id ),
	CONSTRAINT fk_source_file_organizations FOREIGN KEY ( organization_id ) REFERENCES organizations( id )    ,
	CONSTRAINT fk_source_file FOREIGN KEY ( source_file_type_id ) REFERENCES source_file_types( id )    
 );

CREATE INDEX idx_source_file_org ON source_file ( organization_id );

CREATE INDEX idx_source_file_type ON source_file ( source_file_type_id );