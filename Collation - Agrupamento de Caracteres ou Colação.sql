/*
Trata-se da codificação dos caracteres em uma ordem padrão.
Muitos sistemas de colação são baseados em ordem numérica ou alfabética.
a Colcação usada pelos bancos de dados é configurada durante a instalação dos sistema.
*/

--Opções de 'agrupamento' disponíveis

SELECT * FROM fn_helpcollations()

--Descobrir esquema de colação usado atualmente no servidor

SELECT SERVERPROPERTY('Collation') AS collation

--Descobrir esquema de colação usado atualmente no BD

SELECT DATABASEPROPERTYEX('db_Biblioteca', 'Collation') AS collation

--Alterar esquema de agrupamento do Banco de Dados

ALTER DATABASE nome_banco
COLLATE nome_esquema_colação