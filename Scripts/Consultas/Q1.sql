-- Quantos episódios e temporadas a série possui?
-- Quantos episódios cada temporada possui?
-- Qual foi a audiência geral que a série alcançou por temporada?

SELECT 
    Season Temporadas,
    COUNT(Episode) Episódios,
    ROUND(SUM(US_Viewers), 2) Audiência_total
FROM
    episodios
GROUP BY Season

-- Retorno

/*
Temporada,Episodios,Audiencia_Total
1	10	25.15
2	10	37.95
3	10	49.66
4	10	68.46
5	10	68.8
6	10	76.88
7	7	71.83
8	6	71.96
*/