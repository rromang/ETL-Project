CREATE TABLE "UFO_Sightings" (
    "Index"  SERIAL  NOT NULL,
    "Date"   Date NOT NULL,
    "Shape" VARCHAR(30)   NOT NULL,
    "Location" VARCHAR(40)   NOT NULL,
    "State" VARCHAR(2)   NOT NULL,
    "Lat" FLOAT   NOT NULL,
    "Long" FLOAT   NOT NULL,
    "Closest_airport" VARCHAR(30)   NOT NULL,
    "Closest_bases" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_UFO_Sightings" PRIMARY KEY (
        "Index"
     )
);

CREATE TABLE "Fireballs" (
    "Index"  SERIAL  NOT NULL,
    "Date" date   NOT NULL,
    "Lat" FLOAT   NOT NULL,
    "Long" FLOAT   NOT NULL,
    "Location" VARCHAR(40)  NOT NULL,
    "State" VARCHAR(2)  NOT NULL,
    CONSTRAINT "pk_Fireballs" PRIMARY KEY (
        "Index"
     )
);

CREATE TABLE "Airport" (
    "Index"  SERIAL  NOT NULL,
    "Date" date   NOT NULL,
    "Lat" FLOAT   NOT NULL,
    "Long" FLOAT   NOT NULL,
    "Location" VARCHAR(55)   NOT NULL,
    "State" VARCHAR(2)   NOT NULL,
    CONSTRAINT "pk_Airport" PRIMARY KEY (
        "Index"
     )
);

ALTER TABLE "UFO_Sightings" ADD CONSTRAINT "fk_UFO_Sightings_Lat_Long" FOREIGN KEY("Lat", "Long")
REFERENCES "Airport" ("Lat", "Long");

ALTER TABLE "Fireballs" ADD CONSTRAINT "fk_Fireballs_Date" FOREIGN KEY("Date")
REFERENCES "UFO_Sightings" ("Date");