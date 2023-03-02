-- Quais são os episódios com maior tempo de duração (em minutos)?
SELECT 
    Season, Episode, Title, Duration
FROM
    episodios
ORDER BY Duration DESC
LIMIT 5