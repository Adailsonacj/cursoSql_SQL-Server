/*
Trata-se da codifica��o dos caracteres em uma ordem padr�o.
Muitos sistemas de cola��o s�o baseados em ordem num�rica ou alfab�tica.
a Colca��o usada pelos bancos de dados � configurada durante a instala��o dos sistema.
*/

--Op��es de 'agrupamento' dispon�veis

SELECT * FROM fn_helpcollations()

--Descobrir esquema de cola��o usado atualmente no servidor

SELECT SERVERPROPERTY('Collation') AS collation

--Descobrir esquema de cola��o usado atualmente no BD

SELECT DATABASEPROPERTYEX('db_Biblioteca', 'Collation') AS collation

--Alterar esquema de agrupamento do Banco de Dados

ALTER DATABASE nome_banco
COLLATE nome_esquema_cola��o