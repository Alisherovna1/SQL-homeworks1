-- Lesson 1: SQL Server va SSMS Kirish
-- Barcha topshiriqlar yechimlari

---------------------------------------------------
-- 1. Yangi ma’lumotlar bazasi yaratish
---------------------------------------------------
CREATE DATABASE SchoolDB;

---------------------------------------------------
-- 2. Students jadvalini yaratish
---------------------------------------------------
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

---------------------------------------------------
-- 3. Students jadvaliga 3 ta yozuv qo‘shish
---------------------------------------------------
INSERT INTO Students (StudentID, Name, Age) VALUES
(1, 'Ali', 20),
(2, 'Laylo', 22),
(3, 'Javlon', 19);

---------------------------------------------------
-- 4. Jadvaldagi barcha yozuvlarni ko‘rish
---------------------------------------------------
SELECT * FROM Students;

---------------------------------------------------
-- 5. SQL buyruqlari misollari
---------------------------------------------------
-- DQL: Ma’lumotlarni olish
SELECT * FROM Students;

-- DML: Ma’lumotlarni o‘zgartirish
UPDATE Students SET Age = 21 WHERE StudentID = 1;
DELETE FROM Students WHERE StudentID = 3;

-- DDL: Strukturani o‘zgartirish
ALTER TABLE Students ADD Email VARCHAR(100);

-- DCL: Huquqlarni boshqarish (misol)
-- GRANT SELECT ON Students TO FoydalanuvchiNomi;

-- TCL: Tranzaksiyalarni boshqarish
BEGIN TRAN;
UPDATE Students SET Age = 23 WHERE StudentID = 2;
ROLLBACK; -- yoki COMMIT;
