 Create database chelseaDatabase;

create schema Academy;
create schema AcademyAdmin;

create table Academy.student(
stuedntID int identity(1,1) primary key,
FirstName varchar(20) not null,
LastName varchar(20) not null,
Gender char(1) not null,
DOB date,
Phonenumber char(11) not null unique,
street varchar(50),
state varchar(50)
);

select * from Academy.student;

insert into Academy.student values
('Prince','Edikake','M','2009/05/21','09119401030',
'1st Avenue','River state');

insert into Academy.student values
('lucy','Williams','F','2008/02/28','08063549464',
'Egbelu ozodo','River state');

insert into Academy.student values
('Blessed','Williams','M','2018/02/28','08094098762',
'Road 1','Abia state');

insert into Academy.student values
('Okpadien','Edikake','M','1998/08/28','09101989386',
'Aruju street','lagos state');

Insert into Academy.student values
('bukayo','saka','M','1919/09/10','09189478376','north london','london');

insert into Academy.student values
('james','madison','M','2009/01/12','07028574890','new york','london');

insert into Academy.student values
('stephenie','jane','F','2007/03/9','09019848986','paris','France');

insert into Academy.student values
('marcus','Thuram','F','2010/07/10','08027846098','intermilano','Italy');

insert into Academy.student Values
('cole','palmer','M','1990/05/27','09184783976','london','England');

insert into Academy.student values
('Divine','sunday','F','2011/06/04','07027486589','Port harcourt','Rivers state');

insert into Academy.student values
('Goodness','Igah','F','2017/10/11','09028746896','ormuku','River state');

insert into Academy.student values
('John','Divine','M','2011/05/02','09144048758','Umahia','Abia state');

insert into Academy.student values
('Daniela','Jane','M','2021/09/01','09033888902','Washingtom','U.S.A '); 

insert into Academy.student values
('Son','Huemeghn','M','1991/11/15','08077990287','korea','Asia');

insert into Academy.student values
('Chibike','Ukoha','M','2006/04/12','09188773309','Umahia','Abia state');


create table Academy.course(
coursecode int identity(1,1) primary key,
courseName varchar(50) not null unique,
cost money check (cost>0) not null
);

select * from Academy.course;


Insert into Academy.course values
('MMS', 500000);

Insert into Academy.course values
('Data analysis',400000);

Insert into Academy.course values
('Web developer',350000);      

Insert into Academy.course values
('Engineering (Civil)',450000);

insert into Academy.course values
('Andriod',400000);

insert into Academy.course values
('Biology',200000); 

insert into Academy.course values
 ('Tailoring',250000);  
   
 insert into Academy.course values
 ('Electrician',550000);

  insert into Academy.course values
  ('journalist',300000);

  

  create table Academy.Enrollment(
  Enrollment int identity (1,1) primary key,
  Enrollmentdate date,
  StudentID int foreign key references Academy.Student(StudentID),
  CourseCode int foreign key references 

