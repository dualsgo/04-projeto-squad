## Questões levantadas

TOP 5 EPISÓDIOS COM AS MELHORES AVALIAÇÕES:

````
SELECT Episodio, Titulo, Temporada, Nota, Usuarios_avaliacao, Critica_avaliacao
FROM episodios
ORDER BY Nota DESC LIMIT 5;
````

TOP 5 EPISÓDIOS COM AS PIORES AVALIAÇÕES:

````
SELECT Episodio, Titulo, Temporada, Nota, Usuarios_avaliacao, Critica_avaliacao
FROM episodios
ORDER BY Nota  ASC LIMIT 5;
````

TOP 5 EPISÓDIOS COM MAIS ESPECTADORES NOS EUA (EM MILHÕES)

````
SELECT Episodio, Titulo, Temporada, EspectadoresEUA
FROM episodios
ORDER BY EspectadoresEUA  DESC LIMIT 5;
````

TOP 5 EPISÓDIOS COM MENOS ESPECTADORES NOS EUA (EM MILHÕES)

````
SELECT Episodio, Titulo, Temporada, EspectadoresEUA
FROM episodios
ORDER BY EspectadoresEUA  ASC LIMIT 5;
````