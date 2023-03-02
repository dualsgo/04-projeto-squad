-- Quais são os 5 episódios menos assistidos bos Estados Unidos (Em milhões)?
SELECT 
    Episode, Title, Season, Rating, Users_reviews, Critics_reviews, US_Viewers
FROM
    episodios
ORDER BY US_Viewers ASC
LIMIT 5;