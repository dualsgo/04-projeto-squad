-- Quais são os 5 episódios com as maiores avaliações?
SELECT 
    Episode, Title, Season, Rating
FROM
    episodios
ORDER BY Rating DESC
LIMIT 5;