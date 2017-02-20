CREATE TABLE address ( 
	id                   integer DEFAULT nextval('address_seq') NOT NULL,
	single_line_address  varchar(255)  ,
	street_address       varchar(255)  ,
	street_number        varchar(10)  ,
	pre_direction        varchar(120)  ,
	street_name          varchar(100)  ,
	street_type          varchar(24)  ,
	post_direction       varchar(10)  ,
	internal             varchar(10)  ,
	city                 varchar(120)  ,
	state_abbr           varchar(2)  ,
	zip                  varchar(5)  ,
	zip4                 varchar(4)  ,
	longitude            numeric(13,10)  ,
	latitude             numeric(13,10)  ,
	CONSTRAINT pk_address PRIMARY KEY ( id )
 );

COMMENT ON COLUMN address.single_line_address IS '210 W 19th TERR, Kansas City, MO 64108';

COMMENT ON COLUMN address.street_address IS '210 W 19th TERR';