CREATE TABLE public.ufo_fireballs
(
    "Date" text COLLATE pg_catalog."default",
    "Shape" text COLLATE pg_catalog."default",
    "Location" text COLLATE pg_catalog."default",
    "State" text COLLATE pg_catalog."default",
    "Country" text COLLATE pg_catalog."default",
    "Lat Sighting" double precision,
    "Lng Sighting" double precision,
    "Closest Airport" text COLLATE pg_catalog."default",
    "Closest Airport Address" text COLLATE pg_catalog."default",
    "Closest Military Base" text COLLATE pg_catalog."default",
    "Closest Military Base Address" text COLLATE pg_catalog."default",
    "Lat Fireball" double precision,
    "Lng Fireball" double precision
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.ufo_fireballs
    OWNER to postgres;
SELECT *
FROM public.ufo_fireballs;

ALTER TABLE public.ufo_fireballs ADD COLUMN fireballufo_id SERIAL PRIMARY KEY;

CREATE TABLE public.ufo_airports
(
    "Date" text COLLATE pg_catalog."default",
    "Shape" text COLLATE pg_catalog."default",
    "Location" text COLLATE pg_catalog."default",
    "State" text COLLATE pg_catalog."default",
    "Country" text COLLATE pg_catalog."default",
    "Lat" double precision,
    "Lng" double precision,
    "Closest Airport" text COLLATE pg_catalog."default",
    "Closest Airport Address" text COLLATE pg_catalog."default",
    "Closest Military Base" text COLLATE pg_catalog."default",
    "Closest Military Base Address" text COLLATE pg_catalog."default",
    ufo_id integer NOT NULL DEFAULT nextval('ufo_airports_ufo_id_seq'::regclass),
    CONSTRAINT ufo_airports_pkey PRIMARY KEY (ufo_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.ufo_airports
    OWNER to postgres;


CREATE TABLE public.us_airports
(
    id text COLLATE pg_catalog."default",
    ident text COLLATE pg_catalog."default",
    type text COLLATE pg_catalog."default",
    name text COLLATE pg_catalog."default",
    latitude_deg text COLLATE pg_catalog."default",
    longitude_deg text COLLATE pg_catalog."default",
    municipality text COLLATE pg_catalog."default"
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.us_airports
    OWNER to postgres;

ALTER TABLE public.us_airports ADD COLUMN airports_id SERIAL PRIMARY KEY;

SELECT *
FROM public.us_airports;



CREATE TABLE public.fireball
(
    "Date" text COLLATE pg_catalog."default",
    "Lat" double precision,
    "Lng" double precision
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.fireball
    OWNER to postgres;
	
SELECT *
FROM public.fireball;

ALTER TABLE public.fireball ADD COLUMN fireball_id SERIAL PRIMARY KEY;

CREATE TABLE public.fireball
(
    "Date" text COLLATE pg_catalog."default",
    "Latitude (deg.)" double precision,
    "Longitude (deg.)" double precision
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.fireball
    OWNER to postgres;

ALTER TABLE public.fireball ADD COLUMN id SERIAL PRIMARY KEY;

Select *
from public.fireball;