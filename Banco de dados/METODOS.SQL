--VIEW; para facilitar consultas

--CREATE VIEW quantidadeProdutos
--AS
--	SELECT
--   Produto.NomeProduto, Produto.QntdEstoque
--    FROM
--        loja.Produto;
--select * from quantidadeProdutos


--INDICE; seria como um "sumário"; leitura de menos registros; facilita buscas
--CREATE INDEX idDoCliente
--on loja.Cliente (IdCliente)

--Storage procedure
--CREATE OR ALTER PROCEDURE loja.spContaPedidos
--    @CodPedido int,
--   @quantos int OUTPUT
--AS  BEGIN
--    SELECT @quantos = COUNT(*) from loja.Pedido
--    WHERE CodPedido = @CodPedido
--   END


--TRIGGER

--CREATE TRIGGER 



