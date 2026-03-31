USE world;

SELECT CountryCode, COUNT(*) AS CityCount
FROM City
GROUP BY CountryCode;


SELECT Continent, COUNT(*) AS CountryCount
FROM Country
GROUP BY Continent
HAVING COUNT(*) > 30;


SELECT Continent, AVG(GNP) AS AvgGNP
FROM Country
GROUP BY Continent
ORDER BY AvgGNP DESC
LIMIT 5;


SELECT c.Continent, COUNT(DISTINCT cl.Language) AS OfficialLanguages
FROM Country c
JOIN CountryLanguage cl ON c.Code = cl.CountryCode
WHERE cl.IsOfficial = 'T'
GROUP BY c.Continent;



SELECT Continent, MAX(GNP) AS MaxGNP, MIN(GNP) AS MinGNP
FROM Country
GROUP BY Continent;


SELECT c.Name AS Country, AVG(ci.Population) AS AvgCityPopulation
FROM Country c
JOIN City ci ON c.Code = ci.CountryCode
GROUP BY c.Name
ORDER BY AvgCityPopulation DESC
LIMIT 1;


SELECT c.Continent, AVG(ci.Population) AS AvgCityPopulation
FROM Country c
JOIN City ci ON c.Code = ci.CountryCode
GROUP BY c.Continent
HAVING AVG(ci.Population) > 200000;


SELECT Continent, SUM(Population) AS TotalPopulation, AVG(LifeExpectancy) AS AvgLifeExpectancy
FROM Country
GROUP BY Continent
ORDER BY AvgLifeExpectancy DESC;


SELECT Continent, SUM(Population) AS TotalPopulation, AVG(LifeExpectancy) AS AvgLifeExpectancy
FROM Country
GROUP BY Continent
HAVING SUM(Population) > 200000000
ORDER BY AvgLifeExpectancy DESC
LIMIT 3;



