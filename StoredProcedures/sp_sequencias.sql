DROP PROCEDURE IF EXISTS sp_sequencias;
DELIMITER |

CREATE PROCEDURE sp_sequencias (
	pTemporada INT,
    pCodigoAdversario INT,
    pSerie INT -- (1) SERIE DE VITÓRIAS; (2) SERIE INVICTA; (3) SERIE DE DERROTAS; (4) SERIE SEM VENCER
)
BEGIN
	
    SET @Contador = 0;
    
	DROP TABLE IF EXISTS DadosSeq;

	CREATE TEMPORARY TABLE DadosSeq (
		DataJogo DATETIME,
        Mandante INT,
        PlacarMandante INT,
        PlatarVisitante INT,
        Adversario INT,
        Vitoria INT,
        Sequencia INT
	) ENGINE=MEMORY;
 
    
    IF (pSerie = 1) THEN -- série de vitórias
		IF (pCodigoAdversario = 0) THEN
			IF (pTemporada > 0) THEN
				INSERT INTO DadosSeq
						SELECT d, m, pm, pv, v, Serie, CASE WHEN Serie = 2 THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
						FROM (
						SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 > placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
						FROM ca_jogos
						WHERE codadvermand = pCodigoAdversario
						AND temporada = pTemporada
						UNION
						SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 > placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
						FROM ca_jogos
						WHERE codadvervisit = pCodigoAdversario
						AND temporada = pTemporada
						ORDER BY d DESC
						) AS Dados;    
			ELSE
				INSERT INTO DadosSeq
						SELECT d, m, pm, pv, v, Serie, CASE WHEN Serie = 2 THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
						FROM (
						SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 > placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
						FROM ca_jogos
						WHERE codadvermand = pCodigoAdversario
						UNION
						SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 > placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
						FROM ca_jogos
						WHERE codadvervisit = pCodigoAdversario
						ORDER BY d DESC
						) AS Dados;            
            END IF;
		ELSE
			INSERT INTO DadosSeq
					SELECT d, m, pm, pv, v, Serie, CASE WHEN Serie = 2 THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
					FROM (
					SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 < placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
					FROM ca_jogos
					WHERE codadvermand = pCodigoAdversario
					UNION
					SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 < placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
					FROM ca_jogos
					WHERE codadvervisit = pCodigoAdversario
					ORDER BY d DESC
					) AS Dados;			
        END IF;
    ELSE
		IF (pSerie = 2) THEN -- série invicta
			IF (pCodigoAdversario = 0) THEN
				IF (pTemporada > 0) THEN
					INSERT INTO DadosSeq
							SELECT d, m, pm, pv, v, Serie, CASE WHEN (Serie = 2 OR Serie = 1) THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
							FROM (
							SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 > placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
							FROM ca_jogos
							WHERE codadvermand = pCodigoAdversario
							AND temporada = pTemporada
							UNION
							SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 > placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
							FROM ca_jogos
							WHERE codadvervisit = pCodigoAdversario
							AND temporada = pTemporada
							ORDER BY d DESC
							) AS Dados;  
				ELSE
					INSERT INTO DadosSeq
							SELECT d, m, pm, pv, v, Serie, CASE WHEN (Serie = 2 OR Serie = 1) THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
							FROM (
							SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 > placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
							FROM ca_jogos
							WHERE codadvermand = pCodigoAdversario
							UNION
							SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 > placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
							FROM ca_jogos
							WHERE codadvervisit = pCodigoAdversario
							ORDER BY d DESC
							) AS Dados;  
                
                END IF;
			ELSE
				INSERT INTO DadosSeq
						SELECT d, m, pm, pv, v, Serie, CASE WHEN (Serie = 2 OR Serie = 1) THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
						FROM (
						SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 < placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
						FROM ca_jogos
						WHERE codadvermand = pCodigoAdversario
						UNION
						SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 < placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
						FROM ca_jogos
						WHERE codadvervisit = pCodigoAdversario
						ORDER BY d DESC
						) AS Dados;              
            END IF;
		ELSE
			IF (pSerie = 3) THEN -- série de derrotas
				IF (pCodigoAdversario = 0) THEN
					IF (pTemporada > 0) THEN
						INSERT INTO DadosSeq
								SELECT d, m, pm, pv, v, Serie, CASE WHEN Serie = 0 THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
								FROM (
								SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 > placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
								FROM ca_jogos
								WHERE codadvermand = pCodigoAdversario
								AND temporada = pTemporada
								UNION
								SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 > placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
								FROM ca_jogos
								WHERE codadvervisit = pCodigoAdversario
								AND temporada = pTemporada
								ORDER BY d DESC
								) AS Dados;         
					ELSE
						INSERT INTO DadosSeq
								SELECT d, m, pm, pv, v, Serie, CASE WHEN Serie = 0 THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
								FROM (
								SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 > placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
								FROM ca_jogos
								WHERE codadvermand = pCodigoAdversario
								UNION
								SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 > placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
								FROM ca_jogos
								WHERE codadvervisit = pCodigoAdversario
								ORDER BY d DESC
								) AS Dados;         
                    
                    END IF;
				ELSE
					INSERT INTO DadosSeq
							SELECT d, m, pm, pv, v, Serie, CASE WHEN Serie = 0 THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
							FROM (
							SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 < placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
							FROM ca_jogos
							WHERE codadvermand = pCodigoAdversario
							UNION
							SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 < placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
							FROM ca_jogos
							WHERE codadvervisit = pCodigoAdversario
							ORDER BY d DESC
							) AS Dados;                  
                END IF;
			ELSE
				IF (pCodigoAdversario = 0) THEN
					IF (pTemporada > 0) THEN
						INSERT INTO DadosSeq -- série sem vencer
								SELECT d, m, pm, pv, v, Serie, CASE WHEN (Serie = 0 OR Serie = 1) THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
								FROM (
								SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 > placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
								FROM ca_jogos
								WHERE codadvermand = pCodigoAdversario
								AND temporada = pTemporada
								UNION
								SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 > placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
								FROM ca_jogos
								WHERE codadvervisit = pCodigoAdversario
								AND temporada = pTemporada
								ORDER BY d DESC
								) AS Dados;         
					ELSE
						INSERT INTO DadosSeq -- série sem vencer
								SELECT d, m, pm, pv, v, Serie, CASE WHEN (Serie = 0 OR Serie = 1) THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
								FROM (
								SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 > placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
								FROM ca_jogos
								WHERE codadvermand = pCodigoAdversario
								UNION
								SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 > placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
								FROM ca_jogos
								WHERE codadvervisit = pCodigoAdversario
								ORDER BY d DESC
								) AS Dados;         
                    
                    END IF;
				ELSE
					INSERT INTO DadosSeq -- série sem vencer
							SELECT d, m, pm, pv, v, Serie, CASE WHEN (Serie = 0 OR Serie = 1) THEN @Contador := @Contador + 1 ELSE @Contador := 0 END AS Seq
							FROM (
							SELECT data d, codadvermand m, placar1 pm, placar2 pv, codadvervisit v, CASE WHEN placar1 < placar2 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
							FROM ca_jogos
							WHERE codadvermand = pCodigoAdversario
							UNION
							SELECT data d, codadvervisit m, placar2 pm, placar1 pv, codadvermand v, case when placar2 < placar1 THEN 2 WHEN placar1 = placar2 THEN 1 ELSE 0 end AS Serie
							FROM ca_jogos
							WHERE codadvervisit = pCodigoAdversario
							ORDER BY d DESC
							) AS Dados;                 
                END IF;
            END IF;
        END IF;
    END IF;
    
    SET @DataInicial = ( SELECT DataJogo FROM DadosSeq ORDER BY Sequencia DESC, DataJogo DESC LIMIT 1 );
    SET @Maior 		 = ( SELECT Sequencia FROM DadosSeq ORDER BY Sequencia DESC, DataJogo DESC LIMIT 1 );

    SET SQL_SELECT_LIMIT = @Maior;    
    SET @DataFinal 	 = ( SELECT DataJogo FROM DadosSeq	WHERE DataJogo >= @DataInicial AND Sequencia = 1 ORDER BY DataJogo LIMIT 1 );
    
    SELECT DATE_FORMAT(@DataInicial,'%d/%m/%Y') AS DataInicial, DATE_FORMAT(@DataFinal,'%d/%m/%Y') AS DataFinal, @Maior AS QtdeJogos;
    
END
| DELIMITER ;










