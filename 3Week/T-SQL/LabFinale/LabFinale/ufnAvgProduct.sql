
CREATE FUNCTION [SalesLT].[ufnAvgProduct](@productID int)
RETURNS TABLE
AS 
RETURN
	SELECT AVG(UnitPrice) AS AvgPrice
	FROM [SalesLT].[SalesOrderDetail] od
	WHERE od.ProductID = @ProductID