-- public.hospital_zones definition

-- Drop table

-- DROP TABLE public.hospital_zones;

CREATE TABLE public.hospital_zones (
	id serial4 NOT NULL,
	"name" varchar(80) NOT NULL,
	created_at timestamptz DEFAULT now() NULL,
	updated_at timestamptz DEFAULT now() NULL,
	background_color varchar(10) DEFAULT ''::character varying NOT NULL,
	text_color varchar(10) NOT NULL,
	hospital_id int4 NOT NULL,
	description text NULL,
	is_active text DEFAULT true NULL,
	CONSTRAINT hospital_zones_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_hospital_zones_id ON public.hospital_zones USING btree (id);