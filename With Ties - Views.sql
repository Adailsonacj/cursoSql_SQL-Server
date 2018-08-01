--WITH TIES
--Verifica se existe algum ítem com o mesmo valor que o último listado pelo TOP
--Se tiver ele retorna junto

SELECT TOP(3) WITH TIES * from nome_tabela ORDER BY nome_coluna DESC

--Criação de  uma VIEW

CREATE VIEW vw_LivrosAutores AS
SELECT NomeLivro  AS Livro,
tbl_autores.nome AS Autor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.idAutor = tbl_autores.idAutor

--Usando a Exibição

SELECT * FROM vw_LivrosAutores
--Filtros nas exibições
WHERE Livro Like 'S%'

--Alterando exibição

ALTER VIEW vw_LivrosAutores AS
SELECT NomeLivro  AS Livro,
tbl_autores.nome AS Autor,
PrecoLivro AS Valor
FROM tbl_Livro
INNER JOIN tbl_autores
ON tbl_Livro.idAutor = tbl_autores.idAutor