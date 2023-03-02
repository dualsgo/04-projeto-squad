--  Quais os diretores com mais episódios dirigidos?
SELECT Director, COUNT(Episode) as Total
FROM episodios
GROUP BY Director
ORDER BY COUNT(Episode) DESC
LIMIT 5;