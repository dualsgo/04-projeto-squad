-- Quais são os personagens com mais aparições em episódios?
SELECT *
FROM personagens
order by Episodes_appeared DESC
LIMIT 5;