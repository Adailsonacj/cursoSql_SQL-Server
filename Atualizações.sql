USE db_Biblioteca

--Excluindo uma coluna específica

ALTER TABLE tabela
DROP COLUMN nome_coluna

--Excluindo uma constraint

ALTER TABLE tabela
-- Uma constraint é uma restrição
DROP CONSTRAINT nome_constraint

--Adicionando coluna em tabela existente

ALTER TABLE tbl_livro
ADD idAutor SMALLINT not null
CONSTRAINT fk_ID_Autor FOREIGN KEY (idAutor)
REFERENCES tbl_autores

ALTER TABLE tbl_livro
ADD idEditora SMALLINT NOT NULL
CONSTRAINT fk_id_editora FOREIGN KEY (idEditora)
REFERENCES tbl_editoras

--Atualizando colunas
ALTER TABLE tbl_livro
ALTER COLUMN idAutor SMALLINT

--ADD PK
ALTER TABLE TABELA
ADD PRIMARY KEY (nome_coluna)

--Excluindo tabela
USE db_Biblioteca
DROP TABLE tbl_teste_identidade