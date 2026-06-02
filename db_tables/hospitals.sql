-- public.hospitals definition

-- Drop table

-- DROP TABLE public.hospitals;

CREATE TABLE public.hospitals (
	id serial4 NOT NULL,
	"name" varchar(120) NOT NULL,
	"token" varchar(80) NOT NULL,
	image_url text NULL,
	created_at timestamptz DEFAULT now() NULL,
	features _text DEFAULT '{}'::text[] NULL,
	ml_site_id int4 NULL,
	is_trial bool DEFAULT true NULL,
	expired_date timestamptz NULL,
	amount_escort int4 DEFAULT 0 NULL,
	app_version_required int8 DEFAULT 10000 NOT NULL,
	is_shutdown bool DEFAULT false NOT NULL,
	is_maintenance bool DEFAULT false NOT NULL,
	maintenance_message text DEFAULT 'API is under maintenance. Please try again later.'::text NOT NULL,
	CONSTRAINT hospitals_pkey PRIMARY KEY (id)
);
CREATE INDEX idx_hospitals_id ON public.hospitals USING btree (id);
CREATE INDEX idx_hospitals_token ON public.hospitals USING btree (token);