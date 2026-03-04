create database NIITFootballbase;

use NIITFootballbase;

 create schema Arsenal;
 create schema ArsenalAdmin;

 create table .student(
 studentID int identity(1,1) primary key,
 FirstName varchar(20) not null,
 LastName varchar(20) not null,
 Gender char(1) not null,
 DOB date,
 Phonenumber char(11) not null unique,
 Street varchar(50),
 State varchar(50)
 country varchar(50)
 );

 Select * from Football.student;



