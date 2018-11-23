CREATE TABLE c742.abdifferencesfinal
AS
Select a.GeographicArea, 
 CASE WHEN abs(b.twentyten - a.twentyten) < 10000
 THEN ''
 ELSE
 CEILING((b.twentyten - a.twentyten)/10000)*10000 
 END as '2010',
CASE WHEN abs(b.twentyeleven - a.twentyeleven) < 10000
THEN ''
ELSE
CEILING((b.twentyeleven - a.twentyeleven)/10000)*10000 
END as '2011',
CASE WHEN abs(b.twentytwelve - a.twentytwelve) < 10000
THEN ''
ELSE
CEILING((b.twentytwelve - a.twentytwelve)/10000)*10000 
END as '2012',
CASE WHEN abs(b.twentythirteen - a.twentythirteen) < 10000
THEN ''
ELSE
CEILING((b.twentythirteen - a.twentythirteen)/10000)*10000 
END as '2013',
CASE WHEN abs(b.twentyfourteen - a.twentyfourteen) < 10000
THEN ''
ELSE
CEILING((b.twentyfourteen - a.twentyfourteen)/10000)*10000 
END as '2014',
CASE WHEN abs(b.twentyfifteen - a.twentyfifteen) < 10000
THEN ''
ELSE CEILING((b.twentyfifteen - a.twentyfifteen)/10000)*10000 
END as '2015',
CASE WHEN abs(b.twentysixteen - a.twentysixteen) < 10000
THEN ''
ELSE
CEILING((b.twentysixteen - a.twentysixteen)/10000)*10000 
END as '2016'
from c742.state16 b
join c742.state17 a
on 
b.GeographicArea = a.GeographicArea
GROUP By GeographicArea

