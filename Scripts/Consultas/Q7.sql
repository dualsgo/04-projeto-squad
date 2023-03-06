-- Quais são so personagens com mais participações em episódios e qual a porcentagem que esse número representa?
SELECT 
    Personagem, Episodes_appeared Participações, (Episodes_appeared / 73) * 100 AS Porcentagem
FROM
    personagens
LIMIT 5;

-- Retorno
/*
Personagem,Participações,Porcentagem
Tyrion Lannister,67,91.7808
Cersei Lannister,62,84.9315
Daenerys Targaryen,62,84.9315
Jon Snow,62,84.9315
Sansa Stark,59,80.8219
*/