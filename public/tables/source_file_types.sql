CREATE TABLE source_file_types ( 
	id                   integer DEFAULT nextval('source_file_types_seq') NOT NULL,
	name                 varchar(100)  ,
	source_type          varchar(42)  ,
	description          text  ,
	created              timestamp  ,
	CONSTRAINT pk_source_file_types PRIMARY KEY ( id )
 );

COMMENT ON TABLE source_file_types IS 'JSON, XML, Manual Download';

COMMENT ON COLUMN source_file_types.source_type IS 'For internal lookup';