-- Quais são os episódios com maior tempo de duração (em minutos)?
SELECT 
    Season Temporada, Episode Episódio, Title Titulo, Rating Nota, Director Diretor, Duration Duração
FROM
    episodios
ORDER BY Duration DESC
LIMIT 5

-- Retorno

/*
Temporada,Episódio,Titulo,Nota,Diretor,Duração
8,3,The Long Night,7.5,Miguel Sapochnik,82
7,7,The Dragon and the Wolf,9.4,Jeremy Podeswa,80
8,6,The Iron Throne,4.1,David Benioff,80
8,5,The Bells,6,Miguel Sapochnik,78
8,4,The Last of the Starks,5.5,David Nutter,78
*/