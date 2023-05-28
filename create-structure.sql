CREATE TABLE data.region (
id INTEGER,
decription VARCHAR(50)
);
ALTER TABLE data.region
ADD CONSTRAINT pk_region_id PRIMARY KEY (id);

CREATE TABLE data.country (
id INTEGER,
region INTEGER,
description VARCHAR(50)
);
ALTER TABLE data.country
ADD CONSTRAINT pk_country_id PRIMARY KEY (id);
ALTER TABLE data.country
ADD CONSTRAINT fk_country_region
FOREIGN KEY (region) REFERENCES data.region(id);

CREATE TABLE data.city (
id INTEGER,
country INTEGER,
description VARCHAR(50),
latitude DOUBLE PRECISION,
logtitude DOUBLE PRECISION,
dataset VARCHAR(10)
);

ALTER TABLE data.city
ADD CONSTRAINT pk_city_id PRIMARY KEY (id);

ALTER TABLE data.city
ADD CONSTRAINT fk_city_country
FOREIGN KEY (country) REFERENCES data.country(id);

CREATE TABLE data.measurement (
city INTEGER,
mark TIMESTAMP WITHOUT TIME zone,
teparature DOUBLE PRECISION
);

ALTER TABLE data.measurement
ADD CONSTRAINT fk_measurement_city
FOREIGN KEY (city) REFERENCES data.city(id);

CREATE TABLE data.coastline (
shape INTEGER,
segment INTEGER,
latitude DOUBLE PRECISION,
longitude DOUBLE PRECISION
);
