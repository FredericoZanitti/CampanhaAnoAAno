DROP FUNCTION IF EXISTS fn_AnosDosTitulosPorCompeticao;

DELIMITER $
CREATE FUNCTION fn_AnosDosTitulosPorCompeticao (CodigoCompeticao INT, TitulosPorAno VARCHAR(5000))
RETURNS VARCHAR(5000)
BEGIN    
    DECLARE Anos INT;
	DECLARE eof_cursor INTEGER DEFAULT 0; /* cria a variavel que servirá de controle para EOF */
	 
	DECLARE cur_titulosporanos CURSOR FOR  /* Cria o cursor que trabalhará o select */ 
		SELECT es_titulos.ano 
		FROM es_titulos 
		WHERE es_titulos.codcompeticao = CodigoCompeticao
		ORDER BY ano DESC;

	DECLARE CONTINUE HANDLER FOR NOT FOUND SET eof_cursor = 1;  /* Cria a chave que verificará e mudará o valor da variavel de eof quando o select chegar ao final */
	OPEN cur_titulosporanos; /* abre o select */
	FETCH cur_titulosporanos INTO Anos; /* Le a linha */
	WHILE NOT eof_cursor DO
		IF (TitulosPorAno = '')
			THEN SET TitulosPorAno = Anos;
		ELSE
			SET TitulosPorAno = CONCAT(TitulosPorAno, ', ', Anos);
		END IF;

		FETCH cur_titulosporanos INTO Anos; /* Le a linha */
	END WHILE;
	CLOSE cur_titulosporanos; /* fecha o select */  

RETURN
		(        
			TitulosPorAno
		);  
     
END
$

