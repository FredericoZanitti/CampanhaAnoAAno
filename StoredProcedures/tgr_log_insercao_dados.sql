DROP TRIGGER IF EXISTS Tgr_ca_adver_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_adver_Insert AFTER INSERT	
ON ca_adver	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_adver', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_arbit_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_arbit_Insert AFTER INSERT	
ON ca_arbit	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_arbit', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_backup_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_backup_Insert AFTER INSERT	
ON ca_backup	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_backup', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_carreira_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_carreira_Insert AFTER INSERT	
ON ca_carreira	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_carreira', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_cidad_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_cidad_Insert AFTER INSERT	
ON ca_cidad	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_cidad', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_compe_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_compe_Insert AFTER INSERT	
ON ca_compe	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_compe', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_escudos_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_escudos_Insert AFTER INSERT	
ON ca_escudos	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_escudos', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_estad_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_estad_Insert AFTER INSERT	
ON ca_estad	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_estad', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_fase_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_fase_Insert AFTER INSERT	
ON ca_fase	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_fase', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_fornec_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_fornec_Insert AFTER INSERT	
ON ca_fornec	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_fornec', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_jogad_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_jogad_Insert AFTER INSERT	
ON ca_jogad	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_jogad', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_jogos_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_jogos_Insert AFTER INSERT	
ON ca_jogos	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_jogos', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_pais_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_pais_Insert AFTER INSERT	
ON ca_pais	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_pais', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_patroc_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_patroc_Insert AFTER INSERT	
ON ca_patroc	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_patroc', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_posic_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_posic_Insert AFTER INSERT	
ON ca_posic	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_posic', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_rival_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_rival_Insert AFTER INSERT	
ON ca_rival	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_rival', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_tatic_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_tatic_Insert AFTER INSERT	
ON ca_tatic	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_tatic', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_uf_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_uf_Insert AFTER INSERT	
ON ca_uf	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_uf', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_uniformes_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_uniformes_Insert AFTER INSERT	
ON ca_uniformes	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_uniformes', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_ca_user_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_ca_user_Insert AFTER INSERT	
ON ca_user	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('ca_user', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_es_anos_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_es_anos_Insert AFTER INSERT	
ON es_anos	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('es_anos', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_es_gols_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_es_gols_Insert AFTER INSERT	
ON es_gols	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('es_gols', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_es_reser_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_es_reser_Insert AFTER INSERT	
ON es_reser	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('es_reser', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_es_resum_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_es_resum_Insert AFTER INSERT	
ON es_resum	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('es_resum', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_es_tipogol_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_es_tipogol_Insert AFTER INSERT	
ON es_tipogol	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('es_tipogol', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_es_titul_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_es_titul_Insert AFTER INSERT	
ON es_titul	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('es_titul', now(), 'INSERT');
END$	
DELIMITER ;	
	
DROP TRIGGER IF EXISTS Tgr_es_titulos_Insert;	
DELIMITER $	
CREATE TRIGGER Tgr_es_titulos_Insert AFTER INSERT	
ON es_titulos	
FOR EACH ROW	
BEGIN	
	DELETE FROM log_alteracao WHERE data_alt < (NOW() - INTERVAL 1 YEAR);
    INSERT INTO log_alteracao (tabela, data_alt, acao) VALUES ('es_titulos', now(), 'INSERT');
END$	
DELIMITER ;	



