INSERT INTO Calendar_Dim(FullDate, DayofWeek_,

DayofMonth_, Month_, Quarter_, Year_)

SELECT DISTINCT d.OrderDate, DATENAME(dw, d.OrderDate),DATEPART(day,d.OrderDate),

DATEPART(month, d.OrderDate),CONCAT('Q',DATEPART(q, d.OrderDate)),

DATEPART(yyyy, d.OrderDate)

FROM "Order" d