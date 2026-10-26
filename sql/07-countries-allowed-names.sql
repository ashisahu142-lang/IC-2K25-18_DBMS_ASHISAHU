-- Question 7: Only Italy, India, and China are allowed country names.
CREATE TABLE countries (
    country_id   CHAR(2),
    country_name VARCHAR(40) NOT NULL,
    region_id    INT,
    CONSTRAINT chk_countries_name
        CHECK (country_name IN ('Italy', 'India', 'China'))
);
