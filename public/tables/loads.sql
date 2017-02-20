CREATE TABLE loads ( 
	id                   integer DEFAULT nextval('loads_seq') NOT NULL,
	load_date            date  ,
	url_used             varchar(255)  ,
	data_id              integer  ,
	CONSTRAINT pk_loads PRIMARY KEY ( id ),
	CONSTRAINT fk_loads_data FOREIGN KEY ( data_id ) REFERENCES datas( id )    
 );

CREATE INDEX idx_loads ON loads ( data_id );