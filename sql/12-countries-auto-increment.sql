-- Question 12: AUTO_INCREMENT needs an integer column with an index.
CREATE TABLE countries (
    country_id   INT NOT NULL AUTO_INCREMENT,
    country_name VARCHAR(40),
    region_id    INT,
    CONSTRAINT uq_countries_country_id UNIQUE (country_id)
);
