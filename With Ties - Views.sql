--WITH TIES
--Verifica se existe algum �tem com o mesmo valor que o �ltimo listado pelo TOP
--Se tiver ele retorna junto

SELECT TOP(3) WITH TIES * from nome_tabela ORDER BY nome_coluna DESC

--Cria��o de  uma VIEW

CREATE VIEW vw_LivrosAutores AS
SELECT NomeLivro  AS Livro,
tbl_autores.nome AS Autor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.idAutor = tbl_autores.idAutor

--Usando a Exibi��o

SELECT * FROM vw_LivrosAutores
--Filtros nas exibi��es
WHERE Livro Like 'S%'

--Alterando exibi��o

ALTER VIEW vw_LivrosAutores AS
SELECT NomeLivro  AS Livro,
tbl_autores.nome AS Autor,
PrecoLivro AS Valor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.idAutor = tbl_autores.idAutor