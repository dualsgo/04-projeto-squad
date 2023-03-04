--  Quantas casas e regiões existem e quais são as regiões com mais casas?
SELECT  Region Região, COUNT(House_name) Casas
FROM casas
GROUP BY region
ORDER BY COUNT(House_name) DESC
LIMIT 5;

-- Retorno

/*
Região,Casas
Reach,69
Westerlands,55
Riverlands,54
North,48
Crownlands,38
*/