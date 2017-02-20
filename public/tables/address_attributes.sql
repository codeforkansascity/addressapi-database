CREATE TABLE address_attributes ( 
	id                   integer DEFAULT nextval('address_attributes_seq') NOT NULL,
	attribute_type_id    integer  ,
	address_id           integer  ,
	load_id              integer  ,
	attribute_value      varchar(255)  ,
	CONSTRAINT pk_address_attributes PRIMARY KEY ( id ),
	CONSTRAINT fk_address_attributes_address FOREIGN KEY ( address_id ) REFERENCES address( id )    ,
	CONSTRAINT fk_address_attributes FOREIGN KEY ( attribute_type_id ) REFERENCES attribute_types( id )    ,
	CONSTRAINT fk_address_attributes_loads FOREIGN KEY ( load_id ) REFERENCES loads( id )    
 );

CREATE INDEX idx_address_attributes ON address_attributes ( address_id );

CREATE INDEX idx_address_attributes_0 ON address_attributes ( load_id );

CREATE INDEX idx_address_attributes_types ON address_attributes ( attribute_type_id );

