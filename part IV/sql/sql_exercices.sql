-- Tworzenie bazy danych z poziomu linuxa
-- sudo -u postgres createdb computer_store

-- Przełączenie terminala do postgresa
-- sudo -i -u postgres

-- Przejście do bazy danych computer_store
-- psql computer_store

-- Wgranie pliku sql_exercices.sql do naszej nowej bazy danych computer_store
-- psql computer_store < sql_exercices.sql 

-- Stworzenie tabeli Manufacurers
CREATE TABLE Manufacturers (
  Code SERIAL PRIMARY KEY NOT NULL,
  Name TEXT NOT NULL
);

-- Stworzenie tabeli Products
CREATE TABLE Products (
  Code SERIAL PRIMARY KEY NOT NULL,
  Name TEXT NOT NULL ,
  Price REAL NOT NULL ,
  Manufacturer INTEGER NOT NULL,
  FOREIGN KEY (Manufacturer) REFERENCES Manufacturers(Code)
);

-- Wgranie wartości do tabeli Manufacturers do kolumny Name
INSERT INTO Manufacturers(Name) VALUES('Sony');
INSERT INTO Manufacturers(Name) VALUES('Creative Labs');
INSERT INTO Manufacturers(Name) VALUES('Hewlett-Packard');
INSERT INTO Manufacturers(Name) VALUES('Iomega');
INSERT INTO Manufacturers(Name) VALUES('Fujitsu');
INSERT INTO Manufacturers(Name) VALUES('Winchester');

-- Wgranie wartości do tabeli Products, do kolumn Name, Price i Manufacturer
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Hard drive', 240, 5);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Memory', 120, 6);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('ZIP drive', 150, 4);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Floppy disk', 5, 6);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Monitor', 240, 1);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('DVD drive', 180, 2);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('CD drive', 90, 2);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Printer', 270, 3);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('Toner cartridge', 66, 3);
INSERT INTO Products(Name, Price, Manufacturer) VALUES('DVD burner', 180, 2);

-- /////////////////////////////////////////////////////////
-- //////////////////////// ZADANIA ////////////////////////
-- /////////////////////////////////////////////////////////

-- 1. Wyświetl nazwy wszystkich produktów dostępnych w sklepie.
SELECT Name FROM Products;

-- 2. Wyświetl nazwy oraz ceny wszystkich produktów dostępnych w sklepie.
SELECT Name, Price FROM Products;

-- 3. Wyświetl nazwy wszystkich produktów których cena jest mniejsza lub równa 200.
SELECT Name FROM Products 
  WHERE Price <= 200;

-- 4. Wyświetl wszystkie produkty, których cena jest pomiędzy 60 i 120.
SELECT Name FROM Products 
  WHERE Price > 60 AND Price < 120;

-- 5. Wyświetl nazwy oraz ceny w groszach wszystkich produktów dostępnych w sklepie.(ceny powinny zostać pomnożone przez 100)
SELECT Name, Price * 100 AS Price FROM Products;

-- 6. Oblicz średnią cenę z wszystkich produktów.
SELECT AVG(Price) FROM Products;

-- 7. Oblicz średnią cenę z wszystkich produktów, które zostały wyprodukowane przez producenta o id 2.
SELECT AVG(Price) FROM Products 
  INNER JOIN Manufacturers ON products.manufacturer = manufacturers.code
  WHERE manufacturers.code = 2;

-- 8. Oblicz ilość produktów, których cena jest większa bądź równa 180.
SELECT COUNT(*) FROM Products
  WHERE Price >= 180;

-- 9. Wyświetl nazwy i ceny produktów, których cena jest większa bądź równa 180. Wyniki posortuj po cenie(malejąco) oraz po nazwie(rosnąco).
SELECT Name, Price FROM Products
  WHERE Price >= 180
  ORDER BY Price DESC, Name;

-- 10. Wyświetl wszystkie dane o produktach oraz odpowiadającym ich producentach.
SELECT Products.*, Manufacturers.name FROM Products
  INNER JOIN Manufacturers ON products.manufacturer = manufacturers.code;

-- 11. Wyświetl nazwę, cenę oraz nazwę producenta wszystkich produktów dostępnych w sklepie
SELECT Products.name, Products.price, Manufacturers.name FROM Products
  INNER JOIN Manufacturers ON products.manufacturer = manufacturers.code;

-- 12. Wyświetl średnią cenę produktów dla każdego producenta oraz jego id.
SELECT Manufacturers.code, AVG(Price) FROM Manufacturers
  INNER JOIN Products ON manufacturers.code = products.manufacturer
  GROUP BY Manufacturers.code
  ORDER BY code;

-- 13. Wyświetl średnią cenę produktów dla każdego producenta oraz jego nazwę.
SELECT Manufacturers.code, Manufacturers.name, AVG(Price) FROM Manufacturers
  INNER JOIN Products ON manufacturers.code = products.manufacturer
  GROUP BY Manufacturers.code
  ORDER BY Manufacturers.code;

-- 14. Wyświetl nazwy producentów których produkty mają średnią cenę większą bądź równą 150.
SELECT Manufacturers.name FROM Manufacturers
  INNER JOIN Products ON manufacturers.code = products.manufacturer
  GROUP BY Manufacturers.name
  HAVING AVG(Price) >= 150;
  
-- 15. Wyświetl nazwę oraz cenę najtańszego produktu w sklepie.

-- 16. Wyświetl nazwę każdego producenta wraz z nazwą oraz ceną najdroższego produktu tego producenta.

-- 17. Dodaj nowy produkt przypisany do producenta o id 2 z danymi: Loudspeakers, 70.

-- 18. Zaktualizuj nazwę produktu o id 8 na Laser Printer

-- 19. Zaktualizuj ceny wszystkich produktów o 10% rabat.

-- 20. Zaktualizuj ceny wszystkich produktów, których ceny są większe od 120, o 10% rabat.

