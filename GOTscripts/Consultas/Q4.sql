-- Quais são os 5 episódios mais assistidos nos Estados Unidos (Em milhões)?
SELECT 
    Episode, Title, Season, Rating, Users_reviews, Critics_reviews, US_Viewers
FROM
    episodios
ORDER BY US_Viewers DESC
LIMIT 5;