CREATE DATABASE Blog
USE Blog
CREATE TABLE Users
(
Id INT PRIMARY KEY IDENTITY,
Name NVARCHAR(20) NOT NULL,
Surname NVARCHAR(20) NOT NULL,
Email NVARCHAR  NOT NULL UNIQUE CONSTRAINT Email_CHECK CHECK (Email BETWEEN 4 AND 100),
)
CREATE TABLE Posts
(
Id INT PRIMARY KEY IDENTITY,
LikeCount INT CONSTRAINT LikeCount_CHECK CHECK(LikeCount>=10),
CreatedAt DATETIME2 NOT ,
Title NVARCHAR NOT NULL  CONSTRAINT Title_CHECK CHECK (Title BETWEEN 5 AND 500) ,
UserId INT

)


ALTER TABLE Users
ALTER COLUMN Email NVARCHAR(50)


DROP TABLE Users
CREATE TABLE Users
(
Id INT PRIMARY KEY IDENTITY,
Name NVARCHAR(20) NOT NULL,
Surname NVARCHAR(20) NOT NULL,
Email NVARCHAR(250)  NOT NULL UNIQUE ,
)
INSERT INTO Users(Name,Surname,Email)
VALUES
(
'Shukran','Shirinov','shukransirinov@mail.ru'
)
INSERT INTO Users(Name,Surname,Email)
VALUES
(
'Emil','Rahimov','emilrehimov@mail.ru'
)

DROP TABLE Posts
CREATE TABLE Posts
(
Id INT PRIMARY KEY IDENTITY,
LikeCount INT NOT NULL,
CreatedAt DATETIME2 ,
Title NVARCHAR(300) NOT NULL ,
UserId INT NOT NULL,

)
INSERT INTO Posts
VALUES
(
15,'2022-01-11','TEStyazisidir',5
)
INSERT INTO Posts
VALUES
(
20,'2022-01-11','TEStyazisidirtest',9
)
INSERT INTO Posts
VALUES
(
10,'2012-11-21','ILKisGUNU',13
)
SELECT Id, Name+ ' '+Surname AS 'FullName' FROM Users
SELECT *FROM Posts
WHERE LikeCount>10
SELECT *FROM Posts
WHERE Title BETWEEN 20 AND 100
