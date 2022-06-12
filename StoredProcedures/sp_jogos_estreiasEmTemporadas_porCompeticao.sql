DROP PROCEDURE IF EXISTS sp_jogos_estreiasEmTemporadas_porCompeticao;
DELIMITER |

CREATE PROCEDURE sp_jogos_estreiasEmTemporadas_porCompeticao (
	IN 	pCodigoCompeticao	INT
)
BEGIN
	
	DROP TABLE IF EXISTS JogosEstreias;
    
    CREATE TEMPORARY TABLE JogosEstreias (
		codjogo			INT, 
        data			DATE, 
        codadvermand	INT, 
        placar1			INT, 
        placar2			INT, 
        codadvervisit	INT, 
        codestadio		INT, 
        codcompeticao	INT, 
        publico			INT
    ) ENGINE=MEMORY;    
    
    SET @PrimeiraTemporada = (
		SELECT MIN(ca_jogos.temporada)
		FROM ca_jogos
		WHERE ca_jogos.codcompeticao = pCodigoCompeticao
	);

	SET @UltimaTemporada = (
		SELECT MAX(ca_jogos.temporada)
		FROM ca_jogos
		WHERE ca_jogos.codcompeticao = pCodigoCompeticao
	);

	WHILE (@UltimaTemporada >= @PrimeiraTemporada) DO
		INSERT INTO JogosEstreias
        SELECT ca_jogos.codjogo,
			   ca_jogos.data,
               ca_jogos.codadvermand,
               ca_jogos.placar1,
               ca_jogos.placar2,
               ca_jogos.codadvervisit,
               ca_jogos.codestadio,
               ca_jogos.codcompeticao,
               ca_jogos.publico
		FROM ca_jogos
        WHERE ca_jogos.temporada = @PrimeiraTemporada
        AND ca_jogos.codcompeticao = pCodigoCompeticao
        LIMIT 1;		
        
        SET @PrimeiraTemporada = @PrimeiraTemporada + 1;
	END WHILE;
END
| DELIMITER ;



