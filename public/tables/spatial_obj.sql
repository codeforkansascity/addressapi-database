CREATE TABLE spatial_obj ( 
	id                   integer DEFAULT nextval('spatial_obj_seq') NOT NULL,
	data_id              integer  ,
	attribute_type_id    integer  ,
	jurisdiction_id      integer  ,
	effective_date       date  ,
	name                 varchar(100)  ,
	polygon              json  ,
	load_id              integer  ,
	CONSTRAINT pk_areas PRIMARY KEY ( id ),
	CONSTRAINT fk_spatial_obj_attribute_types FOREIGN KEY ( attribute_type_id ) REFERENCES attribute_types( id )    ,
	CONSTRAINT fk_spatial_obj_data FOREIGN KEY ( data_id ) REFERENCES datas( id )    ,
	CONSTRAINT fk_spatial_obj_loads FOREIGN KEY ( load_id ) REFERENCES loads( id )    
 );

CREATE INDEX idx_areas ON spatial_obj ( attribute_type_id );

CREATE INDEX idx_areas_0 ON spatial_obj ( jurisdiction_id );

CREATE INDEX idx_spatial_obj ON spatial_obj ( load_id );

CREATE INDEX idx_spatial_obj_0 ON spatial_obj ( data_id );

COMMENT ON TABLE spatial_obj IS 'Geographic areas that represent attributes.';

COMMENT ON COLUMN spatial_obj.id IS 'Auto Incroment';

COMMENT ON COLUMN spatial_obj.effective_date IS 'Date that this data became effective.  Unless load data has an effedtive date, it will be the date loaded.  (This may have an issue)';

COMMENT ON COLUMN spatial_obj.name IS 'Name of area.';

COMMENT ON COLUMN spatial_obj.polygon IS 'The graphical representation of the area.';