CREATE TABLE c742.differences
AS
Select a.GeographicArea, abs((b.twentyseventeen - a.twentysixteen)) as difference
from c742.state16 a
join c742.state17 b
on 
b.GeographicArea = a.GeographicArea;