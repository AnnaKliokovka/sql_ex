#1
INSERT INTO PC(code, model, speed, ram, hd, cd, price)
VALUES (20, 2111, 950, 512, 60, '52x', 1100)

#2
INSERT INTO Product(maker, model, type)
VALUES 
('Z',4001, 'PC'),
('Z',4002, 'Laptop'),
('Z',4003, 'Printer')

#3
INSERT INTO PC(code, model, speed, ram, hd, cd, price)
VALUES (22, 4444, 1200, DEFAULT, DEFAULT, DEFAULT, 1350)

#4
INSERT INTO PC(code, model, speed, ram, hd,  price)
SELECT MIN(L.code) + 20 AS code, L.model + 1000 AS model, MAX(L.speed) AS speed, MAX(L.ram)*2 AS ram, MAX(L.hd)*2 AS hd,   MAX(L.price)/1.5 AS price
FROM Laptop AS L
GROUP BY L.model

#5
DELETE FROM PC 
WHERE ram = (SELECT MIN(ram) FROM PC) OR hd = (SELECT MIN(hd) FROM PC)

#6
DELETE FROM Laptop
WHERE model IN (SELECT P.model
FROM Product AS P
WHERE P.maker NOT IN 
(SELECT O.maker
FROM Product AS O
WHERE O.type = 'Printer'
GROUP BY O.maker))

#7
UPDATE Product
SET maker = 'Z'
WHERE maker = 'A' AND type = 'Printer'

#8
DELETE FROM Ships
WHERE name IN (SELECT O.ship
FROM Outcomes AS O
WHERE O.result = 'sunk')

#9
UPDATE Classes
SET bore = bore*2.5,
    displacement = Round(displacement/1.1,0)

#10
INSERT INTO PC (code, model, speed, ram, hd, cd, price)
SELECT
      CAST(model AS int) + (SELECT MAX(code) FROM PC) AS code,
      model,
      (SELECT MAX(speed) FROM PC) AS speed,
      (SELECT MAX(ram) FROM PC) AS ram,
      (SELECT MAX(hd) FROM PC) AS hd,
      CAST((SELECT MAX(CAST(substring(cd, 1, LEN(cd)-1) as INT)) FROM PC) as varchar) + 'x' AS cd,
      (SELECT AVG(price) FROM PC) AS price
FROM Product
WHERE type = 'PC' AND model NOT IN (SELECT model FROM PC)
