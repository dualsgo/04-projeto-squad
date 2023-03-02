--  Quantas casas e regiões existem e quais são as regiões com mais casas?
SELECT Region, COUNT(House_name) as casas
FROM casas
GROUP BY region
ORDER BY COUNT(house_name) DESC
LIMIT 5;