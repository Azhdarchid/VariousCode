CREATE TABLE c742.abdifferences
AS
select c.GeographicArea, '2010' as year, CEILING(twentyten/100)*100 as estimate from 
(Select a.GeographicArea, 
(a.twentyten - b.twentyten) as twentyten
from c742.state16 b
join c742.state17 a
on 
b.GeographicArea = a.GeographicArea) c
where abs(twentyten) >= 10000 
union all
select d.GeographicArea, '2011' as year, CEILING(twentyeleven/100)*100 as estimate from 
(Select a.GeographicArea, 
(a.twentyeleven - b.twentyeleven) as twentyeleven
from c742.state16 b
join c742.state17 a
on 
b.GeographicArea = a.GeographicArea) d
where abs(twentyeleven) >= 10000 
union all
select e.GeographicArea, '2012' as year, CEILING(twentytwelve/100)*100 as estimate from 
(Select a.GeographicArea, 
(a.twentytwelve - b.twentytwelve) as twentytwelve
from c742.state16 b
join c742.state17 a
on 
b.GeographicArea = a.GeographicArea) e
where abs(twentytwelve) >= 10000 
union all
select f.GeographicArea, '2013' as year, CEILING(twentythirteen/100)*100 as estimate from 
(Select a.GeographicArea, 
(a.twentythirteen - b.twentythirteen) as twentythirteen
from c742.state16 b
join c742.state17 a
on 
b.GeographicArea = a.GeographicArea) f
where abs(twentythirteen) >= 10000 
union all
select g.GeographicArea, '2014' as year, CEILING(twentyfourteen/100)*100 as estimate from 
(Select a.GeographicArea, 
(a.twentyfourteen - b.twentyfourteen) as twentyfourteen
from c742.state16 b
join c742.state17 a
on 
b.GeographicArea = a.GeographicArea) g
where abs(twentyfourteen) >= 10000 
union all
select h.GeographicArea, '2015' as year, CEILING(twentyfifteen/100)*100 as estimate from 
(Select a.GeographicArea, 
(a.twentyfifteen - b.twentyfifteen) as twentyfifteen
from c742.state16 b
join c742.state17 a
on 
b.GeographicArea = a.GeographicArea) h
where abs(twentyfifteen) >= 10000 
union all
select i.GeographicArea, '2016' as year, CEILING(twentysixteen/100)*100 as estimate from 
(Select a.GeographicArea, 
(a.twentysixteen - b.twentysixteen) as twentysixteen
from c742.state16 b
join c742.state17 a
on 
b.GeographicArea = a.GeographicArea) i
where abs(twentysixteen) >= 10000 



