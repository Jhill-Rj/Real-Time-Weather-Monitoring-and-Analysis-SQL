CREATE DATABASE Weather;

use Weather;

-- Create Locations Table
CREATE TABLE Locations (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(255),
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6)
);

-- Insert data into Locations Table
INSERT INTO Locations (location_id, location_name, latitude, longitude) VALUES
(1, 'New York', 40.7128, -74.0060),
(2, 'Los Angeles', 34.0522, -118.2437),
(3, 'Chicago', 41.8781, -87.6298),
(4, 'Houston', 29.7604, -95.3698),
(5, 'Phoenix', 33.4484, -112.0740),
(6, 'Philadelphia', 39.9526, -75.1652),
(7, 'San Antonio', 29.4241, -98.4936),
(8, 'San Diego', 32.7157, -117.1611),
(9, 'Dallas', 32.7767, -96.7970),
(10, 'San Jose', 37.3382, -121.8863),
(11, 'Austin', 30.2672, -97.7431),
(12, 'Jacksonville', 30.3322, -81.6557),
(13, 'Fort Worth', 32.7555, -97.3308),
(14, 'Columbus', 39.9612, -82.9988),
(15, 'Charlotte', 35.2271, -80.8431),
(16, 'San Francisco', 37.7749, -122.4194),
(17, 'Indianapolis', 39.7684, -86.1581),
(18, 'Seattle', 47.6062, -122.3321),
(19, 'Denver', 39.7392, -104.9903),
(20, 'Washington', 38.9072, -77.0369),
(21, 'Boston', 42.3601, -71.0589),
(22, 'El Paso', 31.7619, -106.4850),
(23, 'Nashville', 36.1627, -86.7816),
(24, 'Portland', 45.5051, -122.6750),
(25, 'Las Vegas', 36.1699, -115.1398),
(26, 'Oklahoma City', 35.4676, -97.5164),
(27, 'Memphis', 35.1495, -90.0490),
(28, 'Louisville', 38.2527, -85.7585),
(29, 'Baltimore', 39.2904, -76.6122),
(30, 'Milwaukee', 43.0389, -87.9065),
(31, 'Miami', 25.7617, -80.1918),
(32, 'Atlanta', 33.7490, -84.3880),
(33, 'New Orleans', 29.9511, -90.0715),
(34, 'Honolulu', 21.3069, -157.8583),
(35, 'Orlando', 28.5383, -81.3792),
(36, 'Toronto', 43.6511, -79.3832),
(37, 'Vancouver', 49.2827, -123.1207),
(38, 'Montreal', 45.5017, -73.5673),
(39, 'Calgary', 51.0486, -114.0708),
(40, 'Ottawa', 45.4215, -75.6919),
(41, 'New York', 40.7128, -74.0060),
(42, 'Los Angeles', 34.0522, -118.2437),
(43, 'Chicago', 41.8781, -87.6298),
(44, 'Houston', 29.7604, -95.3698),
(45, 'Phoenix', 33.4484, -112.0740);

-- Create Weather Data Table
CREATE TABLE Weather_Data (
    data_id INT PRIMARY KEY,
    location_id INT,
    timestamp TIMESTAMP,
    temperature DECIMAL(5, 2),
    humidity INT,
    precipitation DECIMAL(5, 2),
    wind_speed DECIMAL(5, 2),
    weather_condition VARCHAR(50),
    FOREIGN KEY (location_id) REFERENCES Locations(location_id)
);

-- Insert data into Weather Data Table
INSERT INTO Weather_Data (data_id, location_id, timestamp, temperature, humidity, precipitation, wind_speed, weather_condition) VALUES
(1, 1, '2024-02-29 12:00:00', 10.5, 70, 0.0, 3.2, 'Cloudy'),
(2, 2, '2024-02-29 12:00:00', 20.3, 65, 0.0, 2.8, 'Sunny'),
(3, 3, '2024-02-29 12:00:00', 15.8, 80, 0.2, 4.5, 'Rainy'),
(4, 4, '2024-02-29 12:00:00', 18.2, 75, 0.0, 3.0, 'Partly Cloudy'),
(5, 5, '2024-02-29 12:00:00', 25.6, 50, 0.0, 3.7, 'Sunny'),
(6, 6, '2024-02-29 12:00:00', 11.0, 90, 0.8, 2.0, 'Rainy'),
(7, 7, '2024-02-29 12:00:00', 22.1, 55, 0.0, 3.9, 'Sunny'),
(8, 8, '2024-02-29 12:00:00', 19.5, 68, 0.0, 3.5, 'Cloudy'),
(9, 9, '2024-02-29 12:00:00', 21.3, 63, 0.0, 4.2, 'Sunny'),
(10, 10, '2024-02-29 12:00:00', 24.8, 57, 0.0, 4.8, 'Partly Cloudy'),
(11, 11, '2024-02-29 12:00:00', 16.7, 78, 0.3, 3.1, 'Rainy'),
(12, 12, '2024-02-29 12:00:00', 13.2, 85, 0.5, 2.4, 'Cloudy'),
(13, 13, '2024-02-29 12:00:00', 17.9, 72, 0.0, 3.6, 'Sunny'),
(14, 14, '2024-02-29 12:00:00', 20.0, 60, 0.0, 4.0, 'Sunny'),
(15, 15, '2024-02-29 12:00:00', 23.4, 53, 0.0, 4.5, 'Partly Cloudy'),
(16, 16, '2024-02-29 12:00:00', 12.5, 88, 1.2, 2.2, 'Rainy'),
(17, 17, '2024-02-29 12:00:00', 14.8, 82, 0.4, 3.3, 'Cloudy'),
(18, 18, '2024-02-29 12:00:00', 18.6, 70, 0.0, 3.8, 'Sunny'),
(19, 19, '2024-02-29 12:00:00', 26.2, 48, 0.0, 4.2, 'Partly Cloudy'),
(20, 20, '2024-02-29 12:00:00', 15.0, 75, 0.1, 3.7, 'Rainy'),
(21, 21, '2024-02-29 12:00:00', 11.3, 92, 0.6, 2.1, 'Cloudy'),
(22, 22, '2024-02-29 12:00:00', 24.5, 58, 0.0, 4.1, 'Sunny'),
(23, 23, '2024-02-29 12:00:00', 17.2, 76, 0.0, 3.4, 'Sunny'),
(24, 24, '2024-02-29 12:00:00', 21.8, 65, 0.0, 4.6, 'Partly Cloudy'),
(25, 25, '2024-02-29 12:00:00', 27.0, 45, 0.0, 4.9, 'Sunny'),
(26, 26, '2024-02-29 12:00:00', 13.8, 80, 0.2, 3.0, 'Rainy'),
(27, 27, '2024-02-29 12:00:00', 16.5, 77, 0.4, 3.5, 'Cloudy'),
(28, 28, '2024-02-29 12:00:00', 19.2, 68, 0.0, 3.9, 'Sunny'),
(29, 29, '2024-02-29 12:00:00', 22.7, 62, 0.0, 4.3, 'Partly Cloudy'),
(30, 30, '2024-02-29 12:00:00', 14.0, 83, 0.3, 2.5, 'Rainy');

-- 1. List all locations stored in the Locations table.
SELECT location_name FROM Locations;

-- 2. Retrieve the temperature and humidity for a specific location at a particular timestamp.
SELECT temperature, humidity
FROM Weather_Data
WHERE location_id = 25
AND timestamp = '2024-02-29 12:00:00';

-- 3. Display the total count of weather data entries for each location.
SELECT location_id, COUNT(*) AS entry_count
FROM Weather_Data
GROUP BY location_id;

-- 4. Find the average temperature for all locations.
SELECT AVG(temperature) AS avg_temperature
FROM Weather_Data;

-- 5. List all locations with their respective latitude and longitude.
SELECT location_name, latitude, longitude
FROM Locations;

-- 6. Calculate the highest recorded temperature for each location.
SELECT location_id, MAX(temperature) AS max_temperature
FROM Weather_Data
GROUP BY location_id;

-- 7. Display the weather conditions for a specific location and timestamp.
SELECT weather_condition
FROM Weather_Data
WHERE location_id = <location_id>
AND timestamp = '<timestamp>';

-- 8. Find the locations with the lowest humidity levels.
SELECT location_id, MIN(humidity) AS min_humidity
FROM Weather_Data
GROUP BY location_id;

-- 9. List the timestamps for which weather data is available.
SELECT DISTINCT timestamp
FROM Weather_Data;

-- 10. Identify locations with temperatures above 25 degrees Celsius.
SELECT location_id
FROM Weather_Data
WHERE temperature > 25;

-- 11. Rank locations based on the highest wind speed recorded.
SELECT location_id, wind_speed,
RANK() OVER (ORDER BY wind_speed DESC) AS wind_speed_rank
FROM Weather_Data;

-- 12. Determine the average humidity for each month across all locations.
SELECT EXTRACT(MONTH FROM timestamp) AS month, AVG(humidity) AS avg_humidity
FROM Weather_Data
GROUP BY EXTRACT(MONTH FROM timestamp);

-- 13. List locations with precipitation greater than 5mm.
SELECT location_id
FROM Weather_Data
WHERE precipitation > 5;

-- 14. Find the timestamp with the highest recorded temperature across all locations.
SELECT timestamp
FROM Weather_Data
WHERE temperature = (SELECT MAX(temperature) FROM Weather_Data);

-- 15. Calculate the total precipitation for each location in the last 7 days.
SELECT location_id, SUM(precipitation) AS total_precipitation
FROM Weather_Data
WHERE timestamp >= CURRENT_DATE - INTERVAL '7 days'
GROUP BY location_id;

-- OR Solution for MYSQL
SELECT location_id, SUM(precipitation) AS total_precipitation
FROM Weather_Data
WHERE timestamp >= CURRENT_DATE - INTERVAL 7 DAY
GROUP BY location_id;

-- 16. Identify locations where the temperature is higher than the average temperature across all locations.
SELECT location_id
FROM Weather_Data
WHERE temperature > (SELECT AVG(temperature) FROM Weather_Data);

-- 17. Display the top 5 locations with the highest humidity levels.
SELECT location_id, humidity
FROM Weather_Data
ORDER BY humidity DESC
LIMIT 5;

-- 18. Rank locations based on the number of weather data entries.
SELECT location_id, COUNT(*) AS entry_count,
RANK() OVER (ORDER BY COUNT(*) DESC) AS entry_rank
FROM Weather_Data
GROUP BY location_id;

-- 19. Find the locations with the most frequent occurrences of rainy weather conditions.
SELECT location_id
FROM Weather_Data
WHERE weather_condition = 'Rainy'
GROUP BY location_id
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 20. List all locations and their respective weather conditions at the latest timestamp.
SELECT location_id, weather_condition
FROM Weather_Data
WHERE timestamp = (SELECT MAX(timestamp) FROM Weather_Data);

-- 21. Calculate the difference between the maximum and minimum temperatures for each location.
SELECT location_id, MAX(temperature) - MIN(temperature) AS temperature_difference
FROM Weather_Data
GROUP BY location_id;

-- 22. Identify locations where the temperature has been steadily increasing over the past week.
WITH TempDiff AS (
  SELECT location_id, temperature,
  LAG(temperature) OVER (PARTITION BY location_id ORDER BY timestamp) AS prev_temp
  FROM Weather_Data
)
SELECT location_id
FROM TempDiff
WHERE temperature > prev_temp;

-- 23. Display the weather conditions for the most recent entry of each location.
WITH LatestEntry AS (
  SELECT location_id, weather_condition,
  ROW_NUMBER() OVER (PARTITION BY location_id ORDER BY timestamp DESC) AS rn
  FROM Weather_Data
)
SELECT location_id, weather_condition
FROM LatestEntry
WHERE rn = 1;

-- 24. Determine the month with the highest average temperature across all locations.
SELECT EXTRACT(MONTH FROM timestamp) AS month, AVG(temperature) AS avg_temperature
FROM Weather_Data
GROUP BY EXTRACT(MONTH FROM timestamp)
ORDER BY AVG(temperature) DESC
LIMIT 1;

-- 25. Rank locations based on the total precipitation they received in the last month.
SELECT location_id, SUM(precipitation) AS total_precipitation,
RANK() OVER (ORDER BY SUM(precipitation) DESC) AS precipitation_rank
FROM Weather_Data
WHERE timestamp >= CURRENT_DATE - INTERVAL '1 month'
GROUP BY location_id;

-- 26. Find locations where the wind speed is higher than the average wind speed.
SELECT location_id, wind_speed
FROM Weather_Data
WHERE wind_speed > (SELECT AVG(wind_speed) FROM Weather_Data);

-- 27. Calculate the moving average of temperature for each location over the last 7 days.
SELECT location_id, timestamp, temperature,
AVG(temperature) OVER (PARTITION BY location_id ORDER BY timestamp ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_avg_temperature
FROM Weather_Data;

-- 28. Identify locations that experienced a temperature drop of more than 5 degrees Celsius within an hour.
WITH TempWithPrev AS (
    SELECT location_id, timestamp, temperature,
           LAG(temperature) OVER (PARTITION BY location_id ORDER BY timestamp) AS prev_temp
    FROM Weather_Data
)
SELECT location_id, timestamp, temperature
FROM TempWithPrev
WHERE ABS(temperature - prev_temp) > 5;

-- Note: If you're getting zero output, there might be reasons for Data Availability


-- 29. Display the top 3 locations with the highest average temperature in the last month.
SELECT location_id, AVG(temperature) AS avg_temperature
FROM Weather_Data
WHERE timestamp >= CURRENT_DATE - INTERVAL '1 month'
GROUP BY location_id
ORDER BY AVG(temperature) DESC
LIMIT 3;

-- for MYSQL

SELECT location_id, AVG(temperature) AS avg_temperature
FROM Weather_Data
WHERE timestamp >= CURRENT_DATE - INTERVAL 1 MONTH
GROUP BY location_id
ORDER BY avg_temperature DESC
LIMIT 3;

-- 30. Find the location with the maximum temperature variation within a day.
SELECT location_id, MAX(temperature) - MIN(temperature) AS temp_variation
FROM Weather_Data
GROUP BY location_id
ORDER BY temp_variation DESC
LIMIT 1;

-- 31. Display Real-Time Weather Conditions for Different Locations:

SELECT l.location_name, w.timestamp, w.temperature, w.humidity, w.precipitation, w.wind_speed, w.weather_condition
FROM Weather_Data w
JOIN Locations l ON w.location_id = l.location_id
WHERE w.timestamp = (SELECT MAX(timestamp) FROM Weather_Data WHERE location_id = w.location_id);

-- 32. Calculate Trends and Patterns in Weather Data Over Time:
SELECT DATE_FORMAT(timestamp, '%Y-%m-%d %H:00:00') AS hour_slot, AVG(temperature) AS avg_temperature
FROM Weather_Data
GROUP BY hour_slot
ORDER BY hour_slot;













