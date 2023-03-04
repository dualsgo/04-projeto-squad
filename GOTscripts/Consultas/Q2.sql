-- Quais são os 5 episódios com as maiores avaliações, quem dirigiu e qual audiência alcançou nos EUA?
SELECT 
    Episode Episódio, Title Título, Season Temporada, Rating Nota, Director Diretor, US_Viewers Audiência
FROM
    episodios
ORDER BY Rating DESC
LIMIT 5;

-- Retorno

/*
Episodio, Titulo,Temporada,Nota, Diretor, Audiência
10	The Winds of Winter	6	9.9	Miguel Sapochnik	8.89
9	Battle of the Bastards	6	9.9	Miguel Sapochnik	7.66
9	The Rains of Castamere	3	9.9	David Nutter	5.22
8	Hardhome	5	9.9	Miguel Sapochnik	7.01
4	The Spoils of War	7	9.8	Matt Shakman	10.17
*/