-- Codigos postais
INSERT INTO CP(id,codigo,localidade) VALUES('1','4820-370','Paços');
INSERT INTO CP(id,codigo,localidade) VALUES('2','4820-100','Fafe');
INSERT INTO CP(id,codigo,localidade) VALUES('3','4800-019','Guimarães');
INSERT INTO CP(id,codigo,localidade) VALUES('4','4740-010','Esposende');
INSERT INTO CP(id,codigo,localidade) VALUES('5','4820-615','Regadas');
INSERT INTO CP(id,codigo,localidade) VALUES('6','4820-706','São Martinho');
INSERT INTO CP(id,codigo,localidade) VALUES('7','4760-686','Famalicão');
INSERT INTO CP(id,codigo,localidade) VALUES('8','4470-208','Maia');
INSERT INTO CP(id,codigo,localidade) VALUES('9','4460-488','Senhora da Hora');
INSERT INTO CP(id,codigo,localidade) VALUES('10','4590-205','Figueiró');


-- Clientes
INSERT INTO Cliente(nif,email,password,nome,CP_id) VALUES('233819505','miguel@hotmail.com','12345','Migueli','1');
INSERT INTO Cliente(nif,email,password,nome,CP_id) VALUES('233904155','rui@gmail.com','00000','Rui','2');
INSERT INTO Cliente(nif,email,password,nome,CP_id) VALUES('195632433','paulo@gmail.com','1111','Paulo','3');
INSERT INTO Cliente(nif,email,password,nome,CP_id) VALUES('138626367','luisa@gmail.com','1450','Luisa Mendes','2');
INSERT INTO Cliente(nif,email,password,nome,CP_id) VALUES('278302998','dinis.cunha@gmail.com','123456789','Dinis Cunha','4');
INSERT INTO Cliente(nif,email,password,nome,CP_id) VALUES('251998754','ivan@outlook.com','ivan123','Ivan Castro','5');
INSERT INTO Cliente(nif,email,password,nome,CP_id) VALUES('268594384','fabiomaior2@gmail.com','fabiocastroo','Fábio Castro','8');
INSERT INTO Cliente(nif,email,password,nome,CP_id) VALUES('266084141','verasilva@gmail.com','vsilva98','Vera Silva','10');
INSERT INTO Cliente(nif,email,password,nome,CP_id) VALUES('293514046','luisa@gmail.com','1450','Luisa Mendes','2');
INSERT INTO Cliente(nif,email,password,nome,CP_id) VALUES('116105232','brunasilvaaa_1@hotmail.com','bruninhasilva','Bruna Silva','6');



-- Contactos
INSERT INTO Contacto(numero,Cliente_nif) VALUES('919328836','233819505');
INSERT INTO Contacto(numero,Cliente_nif) VALUES('910000000','233904155');
INSERT INTO Contacto(numero,Cliente_nif) VALUES('911111111','195632433');
INSERT INTO Contacto(numero,Cliente_nif) VALUES('952132152','138626367');
INSERT INTO Contacto(numero,Cliente_nif) VALUES('918822882','278302998');
INSERT INTO Contacto(numero,Cliente_nif) VALUES('928323223','251998754');
INSERT INTO Contacto(numero,Cliente_nif) VALUES('926475007','268594384');
INSERT INTO Contacto(numero,Cliente_nif) VALUES('919457642','266084141');
INSERT INTO Contacto(numero,Cliente_nif) VALUES('919324456','293514046');
INSERT INTO Contacto(numero,Cliente_nif) VALUES('926576880','116105232');


-- Producao
INSERT INTO Producao(id,direcao,produtora) VALUES('1','Martin Scorsese','Universal Pictures');
INSERT INTO Producao(id,direcao,produtora) VALUES('2','Christopher Nolan','Warner Bros');
INSERT INTO Producao(id,direcao,produtora) VALUES('3','Joss Whedon','Marvel');
INSERT INTO Producao(id,direcao,produtora) VALUES('4','Shawn Levy','Disney');
INSERT INTO Producao(id,direcao,produtora) VALUES('5','James Mangold','Marvel');
INSERT INTO Producao(id,direcao,produtora,emissora) VALUES('6','Joshua Schwartz','Warner Bros','NBC');
INSERT INTO Producao(id,direcao,produtora) VALUES('7','Andrew W. Marlowe','ABC');
INSERT INTO Producao(id,direcao,produtora) VALUES('8','Tomasz Baginski','Netflix');
INSERT INTO Producao(id,direcao,produtora) VALUES('9','Mark Huffam','HBO');
INSERT INTO Producao(id,direcao,produtora) VALUES('10','Vince Gilligan','AMC');


-- Descricao dos conteudos
INSERT INTO Descricao(id,classificacaoEtaria,duracaoFilme,classificacao,sinopse,dataLancamento) VALUES('11','16','03:00:00','8.6','Jordan Belfort ambicioso corretor da bolsa cria um verdadeiro império','2014-01-09');
INSERT INTO Descricao(id,classificacaoEtaria,duracaoFilme,classificacao,sinopse,dataLancamento) VALUES('22','18','02:45:00','8.4','Após ser culpado da morte de Harvey Dent, Batman desaparece. As coisas mudam com a chegada da mulher-gato','2012-08-02');
INSERT INTO Descricao(id,classificacaoEtaria,duracaoFilme,classificacao,sinopse,dataLancamento) VALUES('33','15','02:23:00','8','Nick Fury reúne os super-heróis da terra','2012-04-25');
INSERT INTO Descricao(id,classificacaoEtaria,duracaoFilme,classificacao,sinopse,dataLancamento) VALUES('44','13','01:55:00','7.2','Guy preso na sua rotina tem sua vida virada de cabeça para baixo enquanto descrobre que é uma personagem de jogo','2012-08-19');
INSERT INTO Descricao(id,classificacaoEtaria,duracaoFilme,classificacao,sinopse,dataLancamento) VALUES('55','18','02:17:00','8.1','Em 2024 os mudantes estão em declínio, e as pessoas não sabem o motivo.','2017-03-03');
INSERT INTO Descricao(id,classificacaoEtaria,duracaoFilme,classificacao,sinopse,dataLancamento) VALUES('66','18','03:29:00','7.8','Basiado no livro de memórias I Heard You Paint Houses','2019-03-01');
INSERT INTO Descricao(id,classificacaoEtaria,classificacao,sinopse,dataLancamento,nrTemporadas) VALUES('77','18','8.4','Genio do computador, Chuck abre um email codificado com segredos do governo','2007-09-27','5');
INSERT INTO Descricao(id,classificacaoEtaria,classificacao,sinopse,dataLancamento,nrTemporadas) VALUES('88','13','9','Escritor de histórias Rick Castle une-se à detetive Kate Beckett para solucionar casos','2009-03-08','8');
INSERT INTO Descricao(id,classificacaoEtaria,classificacao,sinopse,dataLancamento,nrTemporadas) VALUES('99','18','9.5','Geralt de Rívia é um caçador de monstros que luta para encontrar seu lugar no mundo','2019-12-20','2');
INSERT INTO Descricao(id,classificacaoEtaria,classificacao,sinopse,dataLancamento,nrTemporadas) VALUES('111','18','8.2','George R.R Martin decide navegar a fundo pelo genero de recriar a fantasia medieval épica','2011-03-17','8');
INSERT INTO Descricao(id,classificacaoEtaria,classificacao,sinopse,dataLancamento,nrTemporadas) VALUES('222','18','8.2','Professor de química walter white não acredita que sua vida possa pior ainda mais','2008-01-20','5');


-- Conteudos
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('1000','Wolf of Wall Street','Filme','1','5','2.5','11');
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('2000','The Batman','Filme','2','5','2.5','22');
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('3000','Avengers','Filme','3','5','2.5','33');
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('4000','Free Guy','Filme','4','5','2.5','44');
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('5000','Logan','Filme','5','5','2.5','55');
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('6000','The Irishman','Filme','1','5','2.5','66');
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('1','Chuck','Serie','6','5','2.5','77');
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('2','Castle','Serie','7','5','2.5','88');
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('3','The Witcher','Serie','8','5','2.5','99');
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('4','Game of Thrones','Serie','9','5','2.5','111');
INSERT INTO Conteudo(id,titulo,tipo,Producao_id,precoCompra,precoAluguer,Descricao_id) VALUES('5','Breaking Bad','Serie','10','5','2.5','222');


-- Aquisicao

INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao) VALUES('1000','233819505','1','2021-01-24','Compra');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao) VALUES('2000','233819505','2','2021-05-11','Compra');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao) VALUES('3000','233819505','3','2021-06-13','Compra');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao,nrDias) VALUES('1','233819505','4','2022-01-24','Aluguer','30');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao,nrDias) VALUES('2','233819505','5','2022-01-24','Aluguer','30');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao,nrDias) VALUES('6000','233819505','6','2022-01-24','Aluguer','30');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao,nrDias) VALUES('4','138626367','7','2021-01-24','Aluguer','30');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao,nrDias) VALUES('4','138626367','8','2021-03-24','Aluguer','30');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao,nrDias) VALUES('4','278302998','9','2021-05-24','Aluguer','30');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao,nrDias) VALUES('4','251998754','10','2021-05-24','Aluguer','30');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao,nrDias) VALUES('4','268594384','11','2021-05-24','Aluguer','30');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao,nrDias) VALUES('4','266084141','12','2021-05-24','Aluguer','30');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao) VALUES('1000','116105232','13','2014-01-09','Compra');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao) VALUES('1000','293514046','14','2014-01-09','Compra');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao) VALUES('1000','266084141','15','2014-01-09','Compra');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao) VALUES('1000','268594384','116','2014-01-09','Compra');
INSERT INTO Aquisicao(Conteudo_id,Cliente_nif,id,data,tipoAquisicao) VALUES('1000','278302998','17','2014-01-09','Compra');
