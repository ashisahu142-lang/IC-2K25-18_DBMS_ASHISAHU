-- Question 11: A primary key is unique and NOT NULL.
CREATE TABLE countries (
    country_id   CHAR(2) NOT NULL,
    country_name VARCHAR(40),
    region_id    INT,
    CONSTRAINT pk_countries PRIMARY KEY (country_id)
);
