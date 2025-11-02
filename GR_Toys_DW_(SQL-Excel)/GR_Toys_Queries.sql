/* TASK 4 : Dopo aver popolate le tabelle, scrivi delle query utili a: */

/* 1) Verificare che i campi definiti come PK siano univoci. 
In altre parole, scrivi una query per determinare l’univocità dei valori di ciascuna PK (una query per tabella implementata). */

/* Conto i record totali e li confronto con il conteggio dei valori distinti delle Primary Keys di ciascuna tabella. 
Se il risultato finale sarà uguale per entrambi i campi, si confermerà l'univocità dei valori per i campi key prescelti. */

-- COUNTRY
SELECT 
	COUNT(*) AS CountryTotalCount
	, COUNT(DISTINCT CountryKey) AS CountryKeyCount
FROM country;

-- CUSTOMER
SELECT 
	COUNT(*) AS CustomerTotalCount
	, COUNT(DISTINCT CustomerKey) AS CustomerKeyCount
FROM customer;

-- EMPLOYEE 
SELECT 
	COUNT(*) AS EmployeeTotalCount
	, COUNT(DISTINCT EmployeeKey) AS EmployeeKeyCount
FROM employee;

-- LOCATION 
SELECT
	COUNT(*) AS LocationTotalCount
	, COUNT(DISTINCT locationKey) AS LocationKeyCount
FROM location;

-- PRODUCT
SELECT 
	COUNT(*) AS ProductTotalCount
    ,  COUNT(DISTINCT ProductKey) AS ProductKeyCount
FROM product;

-- PRODUCTCATEGORY 
SELECT
    COUNT(*) AS ProductCategoryTotalCount
    ,  COUNT(DISTINCT ProductCategoryKey) AS ProductCategoryKeyCount
FROM productcategory;

-- REGION
SELECT
    COUNT(*) AS RegionTotalCount
    ,  COUNT(DISTINCT RegionKey) AS RegionKeyCount
FROM region;

-- RESELLER
SELECT
    COUNT(*) AS ResellerTotalCount
    ,  COUNT(DISTINCT ResellerKey) AS ResellerKeyCount
FROM reseller;

-- SALES
SELECT 
	COUNT(*) AS SalesTotalCount
    , COUNT(DISTINCT OrderNumber, OrderLineNumber) AS SalesKeyCount
FROM sales;

-- TIME
SELECT 
	COUNT(*) AS TimeTotalCount
    , COUNT(DISTINCT DateKey) AS DateKeyCount
FROM time;


/* 2)	Esporre l’elenco delle transazioni indicando nel result set il codice documento, la data, il nome del prodotto, 
la categoria del prodotto, il nome dello stato, il nome della regione di vendita e un campo booleano valorizzato 
in base alla condizione che siano passati più di 180 giorni dalla data vendita o meno (>180 -> True, <= 180 -> False) */

SELECT 
	s.OrderNumber
    , t.Date
    , p.ProductName
    , pc.ProductCategoryName
    , c.CountryName
    , r.RegionName
    , CASE 
		WHEN datediff(now(), t.date) >180 THEN 'TRUE' 
        ELSE 'FALSE' 
	END AS MoreThan180Days 
FROM sales AS s
JOIN time AS t
	ON s.DateKey = t.DateKey
JOIN product AS p
	ON s.ProductKey = p.ProductKey
JOIN productcategory AS pc
	ON p.ProductCategoryKey = pc.ProductCategoryKey
JOIN location AS l
	ON s.LocationKey = l.LocationKey
JOIN country AS c
	ON l.CountryKey = c.CountryKey
JOIN region AS r
	ON c.RegionKey = r.RegionKey;


/* 3)	Esporre l’elenco dei prodotti che hanno venduto, in totale, una quantità maggiore della media delle vendite 
realizzate nell’ultimo anno censito. (ogni valore della condizione deve risultare da una query e non deve essere 
inserito a mano). Nel result set devono comparire solo il codice prodotto e il totale venduto. */

/* Per risolvere l'esercizio divido in due parti il problema: */

-- 1 Totale vendite per prodotto nell’ultimo anno
SELECT 
    s.ProductKey
    , SUM(s.Quantity) AS TotalSoldQuantity
FROM Sales AS s
JOIN Time AS t 
	ON s.DateKey = t.DateKey
WHERE YEAR(t.Date) = (
    SELECT MAX(YEAR(Date)) FROM Time
)
GROUP BY s.ProductKey;

-- 2 Media dei totali per prodotto nell’ultimo anno
SELECT AVG(TotalSoldQuantity) AS AVGTotalSoldQuantity
FROM (
  SELECT 
    ProductKey
    , SUM(s.Quantity) AS TotalSoldQuantity
  FROM Sales AS s
  JOIN Time AS t 
	ON s.DateKey = t.DateKey
  WHERE YEAR(t.Date) = (SELECT MAX(YEAR(Date)) FROM Time)
  GROUP BY ProductKey
) AS Subquery;


/* A questo punto è possibile innestare la media dei totali per prodotto nell'ultimo anno nel totale delle vendite nell'ultimo anno */ 

SELECT 
    s.ProductKey
    , SUM(s.Quantity) AS TotalSoldQuantity
FROM Sales AS s
JOIN Time AS t 
	ON s.DateKey = t.DateKey
WHERE YEAR(t.Date) = (
    SELECT MAX(YEAR(Date)) FROM Time
    )
GROUP BY s.ProductKey
HAVING SUM(s.Quantity) > (
    SELECT AVG(TotalQuantitySub)
    FROM (
        SELECT 
            s2.ProductKey,
            SUM(s2.Quantity) AS TotalQuantitySub
        FROM Sales AS s2
        JOIN Time AS t2 
			ON s2.DateKey = t2.DateKey
        WHERE YEAR(t2.Date) = (
            SELECT MAX(YEAR(Date)) FROM Time
        )
        GROUP BY s2.ProductKey
    ) AS SubQuery
)
ORDER BY TotalSoldQuantity DESC;



/* 4)	Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno. */

SELECT 
	p.ProductName AS Product
	, SUM(s.SalesAmount) AS TotalSalesByYear
    , YEAR(t.Date) AS Year
FROM sales AS s
JOIN product AS p
	ON s.ProductKey = p.ProductKey
JOIN time AS t
	ON t.DateKey = s.DateKey
WHERE SalesAmount IS NOT NULL
GROUP BY s.ProductKey , p.ProductName, YEAR(t.date)
ORDER BY SUM(s.SalesAmount) DESC;


/* 5) Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente. */

-- Nota: i dati presenti in questo dataset contengono solo l'anno 2023 --
SELECT 
	YEAR(t.date) AS Year
    , c.CountryName
    , SUM(s.SalesAmount) AS TotalSales
FROM sales AS s
JOIN time AS t
	ON s.DateKey = t.DateKey
JOIN location AS l
	ON s.LocationKey = l.LocationKey
JOIN country AS c 
	ON l.CountryKey = c.CountryKey
GROUP BY year(t.date), c.CountryName
ORDER BY YEAR(t.Date), TotalSales DESC;


/* 6)	Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato? */

SELECT 
	pc.ProductCategoryName AS ProductCategory
	, COUNT(s.Quantity) AS TopCategoryQuantity
FROM sales AS s
JOIN product AS p
	ON s.ProductKey = p.ProductKey
JOIN productcategory AS pc
	ON p.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY pc.ProductCategoryName
ORDER BY TopCategoryQuantity DESC
LIMIT 1;
    
    
/* 7)	Rispondere alla seguente domanda: quali sono i prodotti invenduti? Proponi due approcci risolutivi differenti. */

/* -- Approccio 1 - Utilizzando un left join fra product e sales è possibile preservare tutti i record di product e allo stesso tempo individuare 
se alcuni record in sales legati a una specifica product key risultino NULL, quindi invenduti. */
SELECT 
    p.ProductKey
    , p.ProductName
FROM Product p
LEFT JOIN Sales s ON p.ProductKey = s.ProductKey
WHERE s.ProductKey IS NULL;

/* -- Approccio 2 - La query precedente non mostra risultati perchè probabilmente non ci sono prodotti invenduti. 
Grazie a questa query sarà possibile verificare il numero delle vendite per ciascun prodotto e di consguenza verificare l'eventuale presenza di prodotti invenduti. */
SELECT 
    p.ProductKey
    , p.ProductName
    , COUNT(s.OrderNumber) AS SalesNumber
FROM Product p
LEFT JOIN Sales s ON p.ProductKey = s.ProductKey
GROUP BY p.ProductKey, p.ProductName
ORDER BY SalesNumber ASC;


/* 8)	Creare una vista sui prodotti in modo tale da esporre una 
“versione denormalizzata” delle informazioni utili (codice prodotto, nome prodotto, nome categoria) */

CREATE VIEW GR_View_ToysProducts AS
SELECT 
     p.ProductKey
    , p.ProductName
    , pc.ProductCategoryName
    , p.Color
    , p.Size
    , p.Weight
    , p.StandardCost
    , p.ListPrice
FROM Product AS p
JOIN ProductCategory AS pc 
	ON p.ProductCategoryKey = pc.ProductCategoryKey;
    
-- Test gr_view_toysproducts
SELECT *
FROM gr_view_toysproducts;


/* 9)	Creare una vista per le informazioni geografiche */

CREATE VIEW GR_View_ToysGeography AS
SELECT 
    l.LocationKey
    , l.City
    , l.ZipCode
    , c.CountryName
    , r.RegionName
FROM Location AS l
JOIN Country AS c 
	ON l.CountryKey = c.CountryKey
JOIN Region AS r 
	ON c.RegionKey = r.RegionKey;
    
-- Test gr_view_toysgeography
SELECT *
FROM gr_view_toysgeography;



