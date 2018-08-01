USE db_Biblioteca --Nome BD

--Backup do Banco de Dados

BACKUP DATABASE db_Biblioteca --Nome DB
TO DISK = 'C:\Users\adailsonacj\GitHub\cursoSql_SQL-Server\Backup_db_Biblioteca' --Caminho onde será gravado o arquivo e nome do aarquivo.
-- WITH FORMAT; --Se o caminho indicado for uma mídia removível este será formatado