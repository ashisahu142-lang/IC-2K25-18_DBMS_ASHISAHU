-- Question 13: The country_id and region_id pair must be unique.
CREATE TABLE countries (
    country_id   CHAR(2),
    country_name VARCHAR(40),
    region_id    INT,
    CONSTRAINT uq_countries_id_region UNIQUE (country_id, region_id)
);
