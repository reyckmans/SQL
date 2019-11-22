SELECT Title, ArtistId FROM Album;
SELECT ArtistID FROM Album;
SELECT DISTINCT Artistid FROM Album;
SELECT * FROM Album WHERE ArtistId = 8;

SELECT * FROM Customer WHERE Country = 'USA' AND LastName LIKE 'G%' AND FirstName LIKE '%n';
SELECT * FROM Customer WHERE State = 'ON' AND LastName like '%w%';

SELECT SUM(Total) FROM Invoice WHERE BillingCountry = 'USA';
SELECT SUM(Total), COUNT(Total) FROM Invoice WHERE BillingCountry = 'USA';
SELECT SUM(Total), COUNT(Total), COUNT(Total) FROM Invoice WHERE BillingCountry = 'USA';
SELECT SUM(Total) as 'Totale opbrengst', COUNT(Total) as 'totaal aantal kopers' , AVG(Total) as 'gemidelde' FROM Invoice WHERE BillingCountry = 'USA' OR BillingCountry = 'Canada' OR BillingCountry = 'Mexico';
SELECT SUM(Total) as 'Totale opbrengst', COUNT(Total) as 'totaal aantal kopers' , AVG(Total) as 'gemidelde' FROM Invoice WHERE (BillingCountry = 'USA' OR BillingCountry = 'Canada' OR BillingCountry = 'Mexico') AND NOT BillingCity = 'New York';