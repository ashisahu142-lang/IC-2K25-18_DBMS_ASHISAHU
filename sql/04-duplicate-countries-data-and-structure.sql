-- Q4: Copy the structure and all current rows.
CREATE TABLE dup_countries LIKE countries;
INSERT INTO dup_countries (country_id, country_name, region_id)
SELECT country_id, country_name, region_id
FROM countries;
