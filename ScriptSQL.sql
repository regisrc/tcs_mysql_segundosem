/* QUESTÃO 1 */

SET @DATABASE_NAME = 'trabalho_final';

SELECT CONCAT('ALTER TABLE `', table_name, '` ENGINE=InnoDB;') AS sql_statements
FROM information_schema.tables AS tb
WHERE table_schema = @DATABASE_NAME
AND `ENGINE` = 'MyISAM'
AND `TABLE_TYPE` = 'BASE TABLE'
ORDER BY table_name DESC;

ALTER TABLE `pessoa_cliente` ENGINE=InnoDB;
ALTER TABLE `pessoa` ENGINE=InnoDB;
ALTER TABLE `historico` ENGINE=InnoDB;
ALTER TABLE `funcionario_cliente` ENGINE=InnoDB;
ALTER TABLE `estado` ENGINE=InnoDB;
ALTER TABLE `endereco` ENGINE=InnoDB;
ALTER TABLE `contato` ENGINE=InnoDB;
ALTER TABLE `cidade` ENGINE=InnoDB;
