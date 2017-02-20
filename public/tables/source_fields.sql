CREATE TABLE source_fields ( 
	id                   integer DEFAULT nextval('source_fields_seq') NOT NULL,
	data_id              integer  ,
	name                 varchar(100)  ,
	attribute_type_id    integer  ,
	column_no            integer  ,
	CONSTRAINT pk_source_fields PRIMARY KEY ( id ),
	CONSTRAINT fk_source_fields FOREIGN KEY ( attribute_type_id ) REFERENCES attribute_types( id )    ,
	CONSTRAINT fk_source_fields_data FOREIGN KEY ( data_id ) REFERENCES datas( id )    
 );

CREATE INDEX idx_source_fields ON source_fields ( data_id );

CREATE INDEX idx_source_fields_0 ON source_fields ( attribute_type_id );

COMMENT ON COLUMN source_fields.column_no IS 'Column number if used';