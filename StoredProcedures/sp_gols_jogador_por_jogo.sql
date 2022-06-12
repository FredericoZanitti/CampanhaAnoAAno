DROP PROCEDURE IF EXISTS sp_gols_jogador_por_jogo;
DELIMITER |

CREATE PROCEDURE sp_gols_jogador_por_jogo ( 
	pCodigoJogo INT
)
BEGIN 
 
   DECLARE CodigoJogador INT;
   DECLARE Gols INT;
   DECLARE eof_cursor INTEGER DEFAULT 0; /* cria a variavel que servirá de controle para EOF */
     
   DECLARE cur_gols CURSOR FOR  /* Cria o cursor que trabalhará o select */ 
		SELECT es_gols.codjogador, 
			   COUNT(coditem) AS Gols
		FROM es_gols
		WHERE es_gols.codjogo = pCodigoJogo
		GROUP BY es_gols.codjogador
		ORDER BY 2 DESC;

   DECLARE CONTINUE HANDLER FOR NOT FOUND SET eof_cursor = 1;  /* Cria a chave que verificará e mudará o valor da variavel de eof quando o select chegar ao final */
   OPEN cur_gols; /* abre o select */
   FETCH cur_gols INTO CodigoJogador, Gols; /* Le a linha */
   WHILE NOT eof_cursor DO
      START TRANSACTION;
			UPDATE es_titul
            SET es_titul.gols = Gols
			WHERE es_titul.codjogador = CodigoJogador
			AND es_titul.codjogo = pCodigoJogo;
            
			UPDATE es_reser
            SET es_reser.gols = Gols
			WHERE es_reser.codjogador = CodigoJogador
			AND es_reser.codjogo = pCodigoJogo;            
      COMMIT;

      FETCH cur_gols INTO CodigoJogador, Gols; /* Le a linha */
   END WHILE;
   CLOSE cur_gols; /* fecha o select */
   
END
| DELIMITER ;


