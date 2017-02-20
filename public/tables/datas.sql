CREATE TABLE datas ( 
	id                   integer DEFAULT nextval('datas_seq') NOT NULL,
	name                 varchar(255)  ,
	source_name          varchar(255)  ,
	organization_id      integer  ,
	source_file_id       integer  ,
	spatial_field_name   varchar(100)  ,
	projection           varchar(100)  ,
	CONSTRAINT pk_data PRIMARY KEY ( id ),
	CONSTRAINT fk_data_source_file FOREIGN KEY ( source_file_id ) REFERENCES source_file( id )    
 );


CREATE INDEX idx_datas_0 ON datas ( organization_id );

CREATE INDEX idx_sources ON datas ( source_file_id );

COMMENT ON TABLE datas IS 'This is to support source files with multiple datasets.
In GIS sources this would be layers, for an Excel spread sheet it would be tabs.
In the case of a csv, this is not realy needed.';

COMMENT ON COLUMN datas.name IS 'Source name of the layer, tab, ...';

COMMENT ON COLUMN datas.source_name IS 'Name of the layer if it is a GDB';