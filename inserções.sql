--Tabela autores
INSERT INTO tbl_autores (idAutor, nome, sobrenome) VALUES (1, 'Daniel', 'Barret')

INSERT INTO tbl_autores (idAutor, nome, sobrenome) VALUES (2, 'Gerad', 'Carter')

INSERT INTO tbl_autores (idAutor, nome, sobrenome) VALUES (3, 'Mark', 'Sobell')

INSERT INTO tbl_autores (idAutor, nome, sobrenome) VALUES (4, 'William', 'Stanek')

INSERT INTO tbl_autores (idAutor, nome, sobrenome) VALUES (5, 'Richard', 'Blum')

--Tabela editoras

INSERT INTO tbl_Editoras (nome) VALUES ('Prentice Hall')

INSERT INTO tbl_Editoras (nome) VALUES ('O´ Reilly')

INSERT INTO tbl_Editoras (nome) VALUES ('Microsoft Press')

INSERT INTO tbl_Editoras (nome) VALUES ('Wiley')

--Tabela livros
INSERT INTO tbl_Livro(NomeLivro, ISBN, DataPub, PrecoLivro, idAutor, idEditora) VALUES ('Windows Server Enviorement', 0003991782773, '20180121', 100.50, 5, 4)

INSERT INTO tbl_Livro(NomeLivro, ISBN, DataPub, PrecoLivro, idAutor, idEditora) VALUES ('SQL Server do básico ao extraordinário', 123988123986, '20091221', 90.01, 1, 2)

INSERT INTO tbl_Livro(NomeLivro, ISBN, DataPub, PrecoLivro, idAutor, idEditora) VALUES ('Mac os aprenda', 123123123, '20001221', 100.99, 2,2)
