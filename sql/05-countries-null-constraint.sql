-- Q5: Explicitly allow NULL in each column (the default when unspecified).
CREATE TABLE countries (
    country_id   CHAR(2) NULL,
    country_name VARCHAR(40) NULL,
    region_id    INT NULL
);
