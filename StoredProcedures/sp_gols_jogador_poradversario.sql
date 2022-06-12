DROP PROCEDURE IF EXISTS sp_gols_jogador_poradversario;
DELIMITER |

CREATE PROCEDURE sp_gols_jogador_poradversario (
	IN 	pCodigoJogador		INT
)
BEGIN

	DROP TABLE IF EXISTS GolsPorAdversario;

	CREATE TEMPORARY TABLE GolsPorAdversario (
		CodAdver INT,
        Jogos INT,		
        Gols INT,
        Media FLOAT
	) ENGINE=MEMORY;
    
	DROP TABLE IF EXISTS JogosPorAdversario;

	CREATE TEMPORARY TABLE JogosPorAdversario (
		CodAdver INT,
        Jogos INT
	) ENGINE=MEMORY;    
    
    INSERT INTO GolsPorAdversario (CodAdver, Gols)
    SELECT a.codadver, SUM(a.gols) g FROM (
		SELECT r.codadver, SUM(e.gols) gols
        FROM es_titul e, ca_jogos j, es_resum r, ca_adver am, ca_adver av, ca_estad es, ca_compe c
        WHERE e.codjogo = j.codjogo
        AND j.codjogo = r.codjogo
        AND j.codadvermand = am.codadver
        AND j.codadvervisit = av.codadver
        AND j.codestadio = es.codestadio
        AND j.codcompeticao = c.codcompeticao
        AND e.codjogador = pCodigoJogador
        AND e.gols > 0
        GROUP BY codadver
        
        UNION ALL
        
        SELECT r.codadver, SUM(e.gols) gols
        FROM es_reser e, ca_jogos j, es_resum r, ca_adver am, ca_adver av, ca_estad es, ca_compe c
        WHERE e.codjogo = j.codjogo
        AND j.codjogo = r.codjogo
        AND j.codadvermand = am.codadver
        AND j.codadvervisit = av.codadver
        AND j.codestadio = es.codestadio
        AND j.codcompeticao = c.codcompeticao
        AND e.codjogador = pCodigoJogador
        AND e.gols > 0
        GROUP BY codadver
	) AS a
	GROUP BY codadver
	ORDER BY SUM(a.gols) DESC;
    
    INSERT INTO JogosPorAdversario
    SELECT a.codadver, SUM(a.jogos) j FROM (
		SELECT r.codadver, SUM(r.j) jogos
        FROM es_titul e, ca_jogos j, es_resum r, ca_adver am, ca_adver av, ca_estad es, ca_compe c
        WHERE e.codjogo = j.codjogo
        AND j.codjogo = r.codjogo
        AND j.codadvermand = am.codadver
        AND j.codadvervisit = av.codadver
        AND j.codestadio = es.codestadio
        AND j.codcompeticao = c.codcompeticao
        AND e.codjogador = pCodigoJogador
        GROUP BY codadver
        
        UNION ALL
        
        SELECT r.codadver, SUM(r.j) jogos
        FROM es_reser e, ca_jogos j, es_resum r, ca_adver am, ca_adver av, ca_estad es, ca_compe c
        WHERE e.codjogo = j.codjogo
        AND j.codjogo = r.codjogo
        AND j.codadvermand = am.codadver
        AND j.codadvervisit = av.codadver
        AND j.codestadio = es.codestadio
        AND j.codcompeticao = c.codcompeticao
        AND e.codjogador = pCodigoJogador
        GROUP BY codadver
	) AS a
	GROUP BY codadver;
    
    UPDATE GolsPorAdversario
    SET GolsPorAdversario.Jogos = (SELECT JogosPorAdversario.Jogos
								   FROM JogosPorAdversario
                                   WHERE GolsPorAdversario.CodAdver = JogosPorAdversario.CodAdver),
		GolsPorAdversario.Media = ROUND(GolsPorAdversario.Gols/GolsPorAdversario.Jogos,2);
    

	SELECT * 
    FROM GolsPorAdversario
    ORDER BY Gols DESC, Media DESC, Jogos DESC
    LIMIT 20 OFFSET 0;

END
| DELIMITER ;