#11
INSERT INTO PC(code, model, speed, ram, hd, cd, price)
SELECT
     MIN(L.code)+20 AS code,
     L.model + 1000 AS model,
     MAX(L.speed) AS speed,
     MAX(L.ram)*2 AS ram,
     MAX(hd) *2 AS hd,
     CAST((SELECT MAX(CAST(replace(cd, 'x', '') as INT)) FROM PC) AS varchar)+'x' AS cd,
     MAX(price)/1.5 AS price
FROM Laptop AS L
GROUP BY model

#12
UPDATE Laptop
SET screen = screen + 1,
    price = price - 100
WHERE model IN (SELECT P.model
FROM Product AS P
WHERE P.type = 'Laptop' AND (P.maker = 'E' OR P.maker = 'B'))

#13
INSERT INTO Outcomes (ship, battle, result)
VALUES 
('Rodney',(SELECT name FROM Battles WHERE date = '1944-10-25'),'sunk'),
('Nelson',(SELECT name FROM Battles WHERE date = '1945-01-28'),'damaged')

#14
delete from Classes
where class in (
  select
    c.class
  from (
    select name, class from Ships
    union
    select ship, ship from Outcomes
  ) as sh
  right join Classes c on c.class=sh.class
  group by c.class
  having count(sh.name)<3)

#15
DELETE FROM PC
WHERE code NOT IN
(SELECT MAX(code)
FROM PC
GROUP BY model)

#16
DELETE FROM Product
WHERE model NOT IN
(SELECT Pc.model
FROM PC AS Pc
UNION SELECT L.model FROM Laptop AS L
UNION SELECT P.model FROM Printer AS P)


#17
DELETE FROM PC
WHERE hd IN
(SELECT TOP 3 hd
FROM PC
GROUP BY hd
ORDER BY hd)

#18
UPDATE Battles
SET name = replace(name, rtrim(name), '')+rtrim(name)

