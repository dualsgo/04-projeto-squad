--  Quais os diretores com mais episódios dirigidos?

SELECT 
    Director Diretor,
    COUNT(Episode) Total,
    SUM(Duration) Duração_total,
    MAX(Rating) Maior_Nota,
    MIN(Rating) Menor_Nota,
    ROUND(AVG(Rating), 2) Média_Nota
FROM
    episodios
GROUP BY Director
ORDER BY COUNT(Episode) DESC
LIMIT 5;

-- Retorno
/*
Diretor,Total,Duração_Total,Maior_Nota,Menor_Nota,Média_nota
Alex Graves,6,336,9.7,8.9,9.43
Alan Taylor,7,405,9.6,8.5,9.09
Jeremy Podeswa,6354,9.4,8,8.75
Mark Mylod,6,343,9.2,8.4,8.72
David Nutter,9526,9.9,5.5,8.52

*/