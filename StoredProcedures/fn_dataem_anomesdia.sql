DROP FUNCTION IF EXISTS fn_dataem_anomesdia;

DELIMITER $
CREATE FUNCTION fn_dataem_anomesdia (
	dataInicial DATETIME, 
    dataFinal DATETIME,
    somenteAno VARCHAR(1)
)
RETURNS VARCHAR(30)
BEGIN

	SET @Anos = TIMESTAMPDIFF(YEAR, dataInicial, dataFinal);
    
    IF (@Anos < 999) THEN    
		
		SET @Meses = TIMESTAMPDIFF(
			  MONTH,
			  dataInicial + INTERVAL TIMESTAMPDIFF(YEAR, dataInicial, dataFinal) YEAR,
			  dataFinal
			);
		SET @Dias = TIMESTAMPDIFF(
			  DAY,
			  dataInicial + INTERVAL TIMESTAMPDIFF(MONTH, dataInicial, dataFinal) MONTH,
			  dataFinal
			);

		SET @Tempo = '';
		
		-- definir quantidade de anos
		IF (@Anos > 1) 
			THEN SET @Tempo = CONCAT(@Tempo, @Anos, ' anos');
			ELSE
				IF (@Anos = 1) 
					THEN SET @Tempo = CONCAT(@Tempo, @Anos, ' ano');
				END IF;
		END IF;
        
        IF (somenteAno = 'N') THEN		
			-- definir se haverá concatenação com uma ","
			IF ((@Tempo IS NOT NULL) AND (@Anos > 0) AND (@Meses > 0) AND (@Dias > 0)) 
				THEN SET @Tempo = CONCAT(@Tempo, ', '); 
				ELSE
					IF ((@Tempo IS NOT NULL) AND (@Anos > 0) AND (@Meses > 0))
						THEN SET @Tempo = CONCAT(@Tempo, ' e '); 
					END IF;
			END IF;
			
			-- definir quantidade de meses
			IF (@Meses > 1) 
				THEN SET @Tempo = CONCAT(@Tempo, @Meses, ' meses');
				ELSE
					IF (@Meses = 1) 
						THEN SET @Tempo = CONCAT(@Tempo, @Meses, ' mês');
					END IF;
			END IF;    

			-- definir se haverá concatenação com uma ","
			IF ((@Tempo IS NOT NULL) AND ((@Anos > 0) OR (@Meses > 0)) AND (@Dias > 0)) THEN SET @Tempo = CONCAT(@Tempo, ' e '); END IF;

			-- definir quantidade de meses    
			IF (@Dias > 1) 
				THEN SET @Tempo = CONCAT(@Tempo, @Dias, ' dias');
				ELSE
					IF (@Dias = 1) 
						THEN SET @Tempo = CONCAT(@Tempo, @Dias, ' dia');
					END IF;
			END IF; 
        END IF;
	ELSE
		SET @Tempo = 'Impossível determinar';
    END IF;

RETURN
		(        
			@Tempo
		);  
     
END
$