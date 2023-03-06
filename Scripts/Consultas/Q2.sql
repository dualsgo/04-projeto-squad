SELECT DISTINCT
    (Rating),
    Episode Episódio,
    Title Título,
    Season Temporada,
    Director Direção,
    US_Viewers Audiência,
    CASE
        WHEN Rating BETWEEN 9 AND 10 THEN 'ÓTIMO'
        WHEN Rating BETWEEN 8 AND 8.9 THEN 'BOM'
		WHEN Rating BETWEEN 7 AND 7.9 THEN 'MEDIANO'
        WHEN Rating BETWEEN 0 AND 6.9 THEN 'RUIM'
    END AS AVALIAÇÃO
FROM
    episodios
ORDER BY Rating DESC
LIMIT 5

-- Retorno 

/*
Rating, Episódio, Título, Temporada, Direção, Audiência, AVALIAÇÃO
9.9	8	Hardhome	5	Miguel Sapochnik	7.01	ÓTIMO
9.9	9	Battle of the Bastards	6	Miguel Sapochnik	7.66	ÓTIMO
9.9	9	The Rains of Castamere	3	David Nutter	5.22	ÓTIMO
9.9	10	The Winds of Winter	6	Miguel Sapochnik	8.89	ÓTIMO
9.8	4	The Spoils of War	7	Matt Shakman	10.17	ÓTIMO
*/