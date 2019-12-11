SELECT * FROM Album;
/*SELECT * FROM Album; = alle gegevens van de tabel Album*/

SELECT Title, ArtistId FROM Album;
/*SELECT Title, ArtistId FROM Album; = de title en ArtistId van de tabel Album*/

SELECT DISTINCT Artistid FROM Album;
/*DISTRICT = geen herhaling*/

SELECT * FROM Album WHERE ArtistId = 8;
/*SELECT * FROM Album WHERE ArtistId = 8; = alles uit de tabel Album waar het ArtistId gelijk is aan 8*/

SELECT * FROM Album JOIN Attist ON Album.ArtistId = Artist.ArtistId WHERE ArtistId = 8;
/*JOIN = andere tabel er bij te betrekken*/
/*ON = wat de link is tussen deze 2 tabellen*/

SELECT Album.AlbumId, Album.Title, Album.Name FROM Album JOIN Artist ON Album.ArtistId = Artist.ArtistId WHERE ArtistId = 8;


SELECT * /*selecteer alle gegevens*/
	FROM Customer /*van de tabel Customer*/
	WHERE Country = 'USA' /*waar country gelijk is aan USA*/
	OR country = 'Belgium'
		AND LastName LIKE 'G%' 
		AND FirstName LIKE '%n';
	
SELECT * /*selecteer alle gegevens*/
	FROM Customer /*van de tabel Customer*/
		WHERE Country = 'USA' /*waar country gelijk is aan USA*/
		OR Country = 'BELGIUM' /*of waar country gelijk is aan BELGIUM*/
		AND NOT City = 'New York' /*en de City niet gelijk is aan New York*/
			AND LastName LIKE 'G%' /*en waar de achternaam begint met een G*/
			AND FirstName LIKE '%n'; /*en de voornaam eindigt op een N*/
		
SELECT * 
	FROM Customer 
	WHERE State = 'ON' 
		AND LastName like '%w%';

SELECT SUM(Total) 
	FROM Invoice 
	WHERE BillingCountry = 'USA';

SELECT SUM(Total), COUNT(Total) 
	FROM Invoice 
	WHERE BillingCountry = 'USA';

SELECT SUM(Total), COUNT(Total), COUNT(Total) 
	FROM Invoice 
	WHERE BillingCountry = 'USA';

SELECT SUM(Total) as 'Totale opbrengst', COUNT(Total) as 'totaal aantal kopers' , AVG(Total) as 'gemidelde' 
	FROM Invoice 
	WHERE BillingCountry = 'USA' 
		OR BillingCountry = 'Canada' 
		OR BillingCountry = 'Mexico';
	
SELECT SUM(Total) as 'Totale opbrengst', COUNT(Total) as 'totaal aantal kopers' , AVG(Total) as 'gemidelde'
	FROM Invoice 
	WHERE (BillingCountry = 'USA' 
		OR BillingCountry = 'Canada' 
		OR BillingCountry = 'Mexico') 
		AND NOT BillingCity = 'New York';

/*uitleg en voorbeelden*/

/* hier onder oefeningen*/
SELECT Invoice.BillingAddress AS'Customeradres', Customer.FirstName, Customer.LastName 
	FROM Invoice 
	JOIN Customer ON Invoice.CustomerId = Customer.CustomerId; 

SELECT Customer.FirstName, Customer.LastName, Track.Name, InvoiceLine.UnitPrice 
	FROM InvoiceLine 
	JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId 
	JOIN Customer ON Invoice.CustomerId = Customer.CustomerId 
	JOIN Track ON InvoiceLine.TrackId = Track.TrackId;

SELECT Playlist.Name, Track.Name as 'Track name'
	FROM Playlist
	JOIN PlaylistTrack ON playlist.PlaylistId = playlistTrack.PlaylistId
	JOIN Track ON playlistTrack.TrackId = Track.TrackId
	WHERE Playlist.Name = 'Heavy Metal Classic';

SELECT Playlist.Name, Track.Name as 'Track name'
	FROM Playlist
	JOIN PlaylistTrack ON playlist.PlaylistId = playlistTrack.PlaylistId
	JOIN Track ON playlistTrack.TrackId = Track.TrackId
	WHERE Playlist.Name = 'Heavy Metal Classic';

/*sorteren op naam en media type*/
SELECT Track.Name,Genre.Name AS 'Genre', MediaType.Name AS 'media type name'
	FROM Track
	JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
	JOIN Genre ON Track.GenreId = Genre.GenreId
	ORDER BY MediaType.Name, Track.Name ASC;

/*de outste zoeken door MAX en MIN*/
SELECT MIN(BirthDate)
	FROM Employee;

/*de outste zoeken door MAX en MIN + naam*/ 
SELECT FirstName, LastName, MIN(BirthDate)
	FROM Employee;

/*wie er na 1mei 1970 geboren is*/ 
SELECT BirthDate
	FROM Employee
	WHERE BirthDate > '1970-05-1';

/*wie er van 2004 in dienst is*/
SELECT * 
	FROM Employee
	WHERE HireDate >= '2004-01-01';

/*iedereeen die aangenomen is tussen 2002 en 2003*/
SELECT * 
	FROM Employee
	WHERE HireDate >= '2002-01-01'AND HireDate <= '2003-01-01';

/*iedereeen die aangenomen is tussen 2002 en 2003 door midel van between*/
SELECT * 
	FROM Employee
	WHERE HireDate BETWEEN '2002-01-01' AND '2003-01-01';

/*iets toevoegen aan de tabel Track*/




SELECT * /*selecteer alle gegevens*/
	FROM Customer /*van de tabel Customer*/
		WHERE Country = 'USA' /*waar country gelijk is aan USA*/
		OR Country = 'BELGIUM' /*of waar country gelijk is aan BELGIUM*/
		AND NOT City = 'New York' /*en de City niet gelijk is aan New York*/
			AND LastName LIKE 'G%' /*en waar de achternaam begint met een G*/
			AND FirstName LIKE '%n'; /*en de voornaam eindigt op een N*/


 


			
SELECT * FROM Album;			

SELECT * 
	FROM Album
	WHERE ArtistId = '8';

SELECT AlbumId , Title
	FROM Album;

SELECT AlbumId as 'album ID' , Title as 'titeL jaaaa'
	FROM Album;

SELECT MAX(Milliseconds)FROM Track;

SELECT COUNT(City) 
	FROM Customer
	WHERE City = 'London';

SELECT AVG(Milliseconds) from Track;

SELECT Track.name, Genre.Name as 'genre'
	FROM Track
	JOIN Genre on Track.GenreId = genre.GenreId
	ORDER by genre.Name, track.Name DESC;



