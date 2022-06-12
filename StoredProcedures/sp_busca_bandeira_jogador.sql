DROP PROCEDURE IF EXISTS sp_busca_bandeira_jogador;
DELIMITER |

CREATE PROCEDURE sp_busca_bandeira_jogador (
	IN pCodigoJogador INT
)
BEGIN    
	SET @TemNaturalizacao = (
    SELECT j.naturalizado 
    FROM ca_jogad j
    WHERE j.codjogador = pCodigoJogador);
    
	IF (@TemNaturalizacao = 'N')
    THEN
		SELECT p.bandeira 
		FROM ca_jogad j, ca_cidad c, ca_pais p
		WHERE j.codcidade = c.codcidade
		AND c.codpais = p.codpais
		AND j.codjogador = pCodigoJogador;
	ELSE
		SET @PaisNaturalizado = (
		SELECT j.codpais 
		FROM ca_jogad j
		WHERE j.codjogador = pCodigoJogador);		
        
        SELECT p.bandeira
        FROM ca_pais p
        WHERE p.codpais = @PaisNaturalizado;
    END IF;

END
| DELIMITER ;