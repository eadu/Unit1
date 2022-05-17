/*
    Show all customers with credit limit greater than $4000.
*/
SELECT [CustomerName]
FROM [WideWorldImporters].[Sales].[Customers]
WHERE [CreditLimit] > 4000

/*
    Show the name price and quantity for all stock items.
*/
SELECT [StockItemName], [UnitPrice]
FROM [WideWorldImporters].[Warehouse].[StockItems]

/*
    Show all customers & delivery citynames with a delivery city that starts with “Y.”
*/
SELECT [CustomerName], [CityName]
FROM [WideWorldImporters].[Sales].[Customers], [WideWorldImporters].[Application].[Cities]
WHERE [Customers].[DeliveryCityID] = [Cities].[CityID] AND CityName LIKE 'Y%'
    

/*
    Show the inventory and the related orders. Display the StockItemID, StockItemName, qty Ordered, qty received, purchase order, receipt date.
*/
SELECT [StockItems].[StockItemID], [StockItemName], [OrderedOuters], [ReceivedOuters], [PurchaseOrderID],[LastReceiptDate]
FROM [WideWorldImporters].[Warehouse].[StockItems]
INNER JOIN [WideWorldImporters].[Purchasing].[PurchaseOrderLines]
    ON [StockItems].[StockItemID] = [PurchaseOrderLines].[StockItemID]
