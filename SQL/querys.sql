
-- Para os Groups nao derem erro:
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
--

-- Ver Conteudo de um cliente dado o seu nif

DELIMITER $$
CREATE PROCEDURE histCliente(IN nifCliente VARCHAR(200))
BEGIN
SELECT C1.titulo,C1.tipo from Conteudo C1
INNER JOIN Aquisicao A1 on C1.id = A1.Conteudo_id
INNER JOIN Cliente P1 on A1.Cliente_nif = P1.nif AND P1.nif=nifCliente
ORDER BY tipo;
END $$


CALL histCliente('233819505');
CALL histCliente('268594384');


-- Dado um titulo de um conteudo dar a sua Produçao 

DELIMITER $$
CREATE PROCEDURE conteudoProd(IN tituloConteudo VARCHAR(200))
BEGIN
SELECT direcao,produtora,emissora from Producao P1
INNER JOIN Conteudo C1 on P1.id = C1.Producao_id
Where C1.titulo = tituloConteudo;
END $$

CALL conteudoProd('Wolf of Wall Street');
CALL conteudoProd('The Batman');
CALL conteudoProd('Chuck');


-- Compras numa dada data

DELIMITER $$
CREATE PROCEDURE comprasDias(IN dataIN VARCHAR(200))
BEGIN
SELECT titulo,tipo,COUNT(*) as nrVezes from Conteudo C1
INNER JOIN Aquisicao A1 on A1.Conteudo_id = C1.id
WHERE A1.data = dataIN AND A1.tipoAquisicao = 'Compra'
GROUP BY titulo
ORDER BY nrVezes DESC;
END $$

CALL comprasDias('2014-01-09');


-- Compras/alugueres num dado ano

DELIMITER $$
CREATE PROCEDURE listaAno(IN anoIN VARCHAR(200))
BEGIN
SELECT titulo,tipo,COUNT(*) as nrVezes from Conteudo C1
INNER JOIN Aquisicao A1 on A1.Conteudo_id = C1.id
WHERE YEAR(A1.data) = anoIN AND  A1.tipoAquisicao in ('Compra','Aluguer')
GROUP BY titulo
ORDER BY nrVezes DESC;
END $$

CALL listaAno('2021');


-- Top n filmes mais adquiridos (compra e aluguer) do serviço

DELIMITER $$
CREATE PROCEDURE topNFilmes(IN nIN INT)
BEGIN
SELECT titulo,COUNT(*) as nrVezesAdquirido from Conteudo C1
INNER JOIN Aquisicao A1 on A1.Conteudo_id = C1.id
WHERE C1.tipo = 'Filme'
GROUP BY titulo
ORDER BY nrVezesAdquirido DESC LIMIT nIN;
END $$

CALL topNFilmes('10');


-- Top n series mais adquiridos (compra e aluguer) do serviço

DELIMITER $$
CREATE PROCEDURE topNSeries(IN nIN INT)
BEGIN
SELECT titulo,COUNT(*) as nrVezesAdquirido from Conteudo C1
INNER JOIN Aquisicao A1 on A1.Conteudo_id = C1.id
WHERE C1.tipo = 'Serie'
GROUP BY titulo
ORDER BY nrVezesAdquirido DESC LIMIT nIN;
END $$

CALL topNSeries('5');


-- Quanto gastou um cliente no serviço

DELIMITER $$
CREATE PROCEDURE gastoCliente(IN nifCliente VARCHAR(200))
BEGIN
SELECT nifCliente,(SUM(precoCompra) + SUM(precoAluguer)) as valorTotal from Conteudo
WHERE id IN (SELECT Conteudo_id from Aquisicao A1
INNER JOIN Cliente C1 on A1.Cliente_nif = C1.nif
WHERE C1.nif = nifCliente);
END $$

CALL gastoCliente('233819505');
CALL gastoCliente('233904155');


-- Descrição de um conteudo dado seu id

DELIMITER $$
CREATE PROCEDURE descCont(IN idDoConteudo VARCHAR(200))
BEGIN
SELECT C1.titulo,C1.tipo,D1.* FROM Descricao D1,Conteudo C1
where C1.descricao_id = D1.id and C1.id = idDoConteudo;
END $$

CALL descCont('5');


-- Fazer update do nr de temporadas de uma Serie dado o seu id e um INT que é o numero de temporadas a aumentar

DELIMITER $$
CREATE PROCEDURE updateTempSerie(IN idDaSerie VARCHAR(200), nrTemporadasNovas INT)
BEGIN
UPDATE Descricao SET nrTemporadas = nrTemporadas + nrTemporadasNovas
WHERE id IN (Select Descricao_id FROM Conteudo C1 WHERE C1.id = idDaSerie);
END $$

CALL updateTempSerie('5','1');
