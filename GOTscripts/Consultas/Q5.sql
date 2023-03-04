-- Quais são os 5 episódios mais assistidos nos Estados Unidos (Em milhões)?
SELECT 
    Episode Episódio,
    Title Título,
    Season Temporada,
    Rating Nota,
    ROUND(Us_Viewers, 2) Audiência_EUA
FROM
    episodios
ORDER BY US_Viewers DESC
LIMIT 5;

-- Retorno

/*
Episódio,Título,Temporada,Nota,Audiência_EUA
6,The Iron Throne,8,4.1,13.61
5,The Bells,8,6,12.48
7,The Dragon and the Wolf,7,9.4,12.07
3,The Long Night,8,7.5,12.02
4,The Last of the Starks,8,5.5,11.8
*/