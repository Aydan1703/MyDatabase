Create database SchoolDB


create table Students
(
ID int primary key Identity(1,1),
FullName nvarchar(100) not null,
Age int ,
Check(Age>6 and Age<20),
Email varchar(40) unique,
Score int Default 0
Check (Score>0 and Score<100),
)
select * from Students

Insert INto Students(FullName,Age,Email,Score)
Values
('Aylin Orucova',18,'aylinoruclu@gmail.com',75),
('Murad Haciyev',19,'muradhaciyev@gmail.com',64),
('Senan Kerimli',14,'senankerimli@gmail.com',84),
('Reshad Quliyev',13,'reshadguliyev@gmail.com',98),
('Alsu Ehmadzade',12,'alsuehmedzade@gmail.com',89);


--Alter table Students
--add PhoneNumber varchar(20)


--Update Students Set Email='elachi@gmail.com' Where(Score >90)

--Delete from Students Where (Age<16)


ALter table Students
Add constraint chk_score_mod5 Check (Score%5=0);


create table TopStudents
(
ID int primary key Identity(1,1),
FullName nvarchar(100) not null,
Score int Default 0
)

Insert into TopStudents(FullName,Score)
Select FullName,Score
from Students where Score>90;
select * from TopStudents


