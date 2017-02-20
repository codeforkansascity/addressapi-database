CREATE TABLE attribute_types ( 
	id                   integer DEFAULT nextval('attribute_types_seq') NOT NULL,
	name                 varchar(100)  ,
	attribute_name       varchar(100)  ,
	CONSTRAINT pk_area_types PRIMARY KEY ( id )
 );

COMMENT ON TABLE attribute_types IS 'Change to Source_File';

COMMENT ON COLUMN attribute_types.id IS 'Auto Incroment';

COMMENT ON COLUMN attribute_types.name IS 'Name of area type.  Example Neighborhood, TIFF, School District, Council District';

COMMENT ON COLUMN attribute_types.attribute_name IS 'councel_district';