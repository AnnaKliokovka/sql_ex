-----
**Задание 1:**

Добавить в таблицу PC следующую модель:  
code: 20  
model: 2111  
speed: 950  
ram: 512  
hd: 60  
cd: 52x  
price: 1100  

-----
**Задание 2:**  
Добавить в таблицу Product следующие продукты производителя Z:
принтер модели 4003, ПК модели 4001 и блокнот модели 4002

-----

**Задание 3:**  
Добавить в таблицу PC модель 4444 с кодом 22, имеющую скорость процессора 1200 и цену 1350.  
Отсутствующие характеристики должны быть восполнены значениями по умолчанию, принятыми для соответствующих столбцов. 

-----
**Задание 4:**  
Для каждой группы блокнотов с одинаковым номером модели добавить запись в таблицу PC со следующими характеристиками:  
код: минимальный код блокнота в группе +20;  
модель: номер модели блокнота +1000;  
скорость: максимальная скорость блокнота в группе;  
ram: максимальный объем ram блокнота в группе *2;  
hd: максимальный объем hd блокнота в группе *2;  
cd: значение по умолчанию;  
цена: максимальная цена блокнота в группе, уменьшенная в 1,5 раза.  
Замечание. Считать номер модели числом.  

-----
**Задание 5:**  
Удалить из таблицы PC компьютеры, имеющие минимальный объем диска или памяти.

-----
**Задание 6:**  
Удалить все блокноты, выпускаемые производителями, которые не выпускают принтеры.

-----
**Задание 7:**  
Производство принтеров производитель A передал производителю Z. Выполнить соответствующее изменение.

-----
**Задание 8:**  
Удалите из таблицы Ships все корабли, потопленные в сражениях.

-----
**Задание 9:**  
Измените данные в таблице Classes так, чтобы калибры орудий измерялись в
сантиметрах (1 дюйм=2,5см), а водоизмещение в метрических тоннах (1
метрическая тонна = 1,1 тонны). Водоизмещение вычислить с точностью до
целых.

-----
**Задание 10:**  
Добавить в таблицу PC те модели ПК из Product, которые отсутствуют в таблице PC.  
При этом модели должны иметь следующие характеристики:  
1. Код равен номеру модели плюс максимальный код, который был до вставки.  
2. Скорость, объем памяти и диска, а также скорость CD должны иметь максимальные характеристики среди всех имеющихся в таблице PC.  
3. Цена должна быть средней среди всех ПК, имевшихся в таблице PC до вставки.

-----
**Задание 11:**  
Для каждой группы блокнотов с одинаковым номером модели добавить запись в таблицу PC со следующими характеристиками:
код: минимальный код блокнота в группе +20;
модель: номер модели блокнота +1000;
скорость: максимальная скорость блокнота в группе;
ram: максимальный объем ram блокнота в группе *2;
hd: максимальный объем hd блокнота в группе *2;
cd: cd c максимальной скоростью среди всех ПК;
цена: максимальная цена блокнота в группе, уменьшенная в 1,5 раза

-----
**Задание 12:**  
Добавьте один дюйм к размеру экрана каждого блокнота,
выпущенного производителями E и B, и уменьшите его цену на $100.

-----
**Задание 13:**  
Ввести в базу данных информацию о том, что корабль Rodney был потоплен в битве, произошедшей 25/10/1944, а корабль Nelson поврежден - 28/01/1945.
Замечание: считать, что дата битвы уникальна в таблице Battles.

-----
**Задание 14:**  
Удалите классы, имеющие в базе данных менее трех кораблей (учесть корабли из Outcomes).

-----
**Задание 15:**  
Из каждой группы ПК с одинаковым номером модели в таблице PC удалить все строки кроме строки с наибольшим для этой группы кодом (столбец code).

-----
**Задание 16:**  
Удалить из таблицы Product те модели, которые отсутствуют в других таблицах.

-----
**Задание 17:**  
Удалить из таблицы PC компьютеры, у которых величина hd попадает в тройку наименьших значений.

-----
**Задание 18:**  
Перенести все концевые пробелы, имеющиеся в названии каждого сражения в таблице Battles, в начало названия.
