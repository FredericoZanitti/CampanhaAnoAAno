DROP PROCEDURE IF EXISTS sp_Titulos_Qtde_Anos;
DELIMITER |

CREATE PROCEDURE sp_Titulos_Qtde_Anos (
	IN pTipoCompeticao VARCHAR(1)
)
BEGIN   
    DECLARE CodigoCompeticao INT;
    DECLARE Ano INT;
    DECLARE AnosTitulos VARCHAR(5000);
    
    DROP TABLE IF EXISTS TitulosInternacionais;
    
    CREATE TEMPORARY TABLE TitulosInternacionais (
        CodigoCompeticao INT,
        NomeCompeticao VARCHAR(35),
        QtdeTitulos INT,
        AnosDosTitulos VARCHAR(5000)
    ) ENGINE=MEMORY;
    
    -- Títulos Internancionais
    INSERT INTO TitulosInternacionais
		SELECT es_titulos.codcompeticao AS CodigoCompeticao, 
			   ca_compe.nome AS NomeCompeticao, 
			   COUNT(*) AS QtdeTitulos,
               fn_AnosDosTitulosPorCompeticao(es_titulos.codcompeticao,'') AS AnosDosTitulos
		FROM es_titulos
		INNER JOIN ca_compe ON ca_compe.codcompeticao = es_titulos.codcompeticao
		WHERE ca_compe.tipocompeticao = pTipoCompeticao
		GROUP BY es_titulos.codcompeticao, ca_compe.nome
		ORDER BY COUNT(*) DESC, ca_compe.nome;
        
	SELECT * 
    FROM TitulosInternacionais
    ORDER BY TitulosInternacionais.QtdeTitulos DESC,
			 TitulosInternacionais.AnosDosTitulos DESC,
             TitulosInternacionais.NomeCompeticao;
END
| DELIMITER ;