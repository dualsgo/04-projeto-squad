-- Quantos episódios a série possui no total?
SELECT 
    COUNT(Episode)
FROM
    episodios;

-- Quantos temporadas a série possui no total?
SELECT 
    COUNT(Season)
FROM
    episodios;

-- Quantos episódios cada temporada possui?

SELECT 
    Season, COUNT(Episode) AS Total
FROM
    episodios
GROUP BY Season
ORDER BY Season