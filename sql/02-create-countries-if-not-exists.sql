-- Question 2: Create the table only if it does not already exist.
-- If it exists, this statement leaves its current definition unchanged.
CREATE TABLE IF NOT EXISTS countries (
    country_id   CHAR(2),
    country_name VARCHAR(40),
    region_id    INT
);
