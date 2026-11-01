-- Question 9: Prevent duplicate country_id values.
CREATE TABLE countries (
    country_id   CHAR(2) NOT NULL,
    country_name VARCHAR(40),
    region_id    INT,
    CONSTRAINT uq_countries_country_id UNIQUE (country_id)
);
