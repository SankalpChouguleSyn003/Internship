CREATE DATABASE SQL_task;
USE SQL_task;

SHOW TABLES;
SELECT * FROM crime_data_from_2020_to_2024_1;

-- Total Crimes
SELECT COUNT(*) AS total_crimes
FROM crime_data_from_2020_to_2024_1;

-- Crime by Area
SELECT AREA_NAME, COUNT(*) AS total_crimes
FROM  crime_data_from_2020_to_2024_1
GROUP BY AREA_NAME
ORDER BY total_crimes DESC;

-- Crime type
SELECT Crm_Cd_Desc, COUNT(*) AS crime_count
FROM crime_data_from_2020_to_2024_1
GROUP BY Crm_Cd_Desc
ORDER BY crime_count DESC;

-- Crime by victim gender
SELECT Vict_Sex, COUNT(*) AS victim_count
FROM crime_data_from_2020_to_2024_1
GROUP BY Vict_Sex;

-- Crime by location
SELECT Premis_Desc, COUNT(*) AS crime_count
FROM crime_data_from_2020_to_2024_1
GROUP BY Premis_Desc
ORDER BY crime_count DESC;

-- Crime having Weapon
SELECT Weapon_Desc, COUNT(*) AS weapon_cases
FROM crime_data_from_2020_to_2024_1
GROUP BY Weapon_Desc
ORDER BY weapon_cases DESC;

--  Crime by year
SELECT DATE_OCC AS crime_year, COUNT(*) AS total_cases
FROM crime_data_from_2020_to_2024_1
GROUP BY crime_year
ORDER BY crime_year;

