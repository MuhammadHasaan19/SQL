DROP DATABASE HOSIPITAL;
CREATE DATABASE HOSIPITAL;

create table Patient(

PatientID varchar (15),
 Name varchar (15),
 Age int,
 Gender varchar(5),
 Address varchar(20),
 Disease varchar(10),
 DoctorID varchar(15), 
primary key (PatientID)

);
 ALTER TABLE Patient
 ADD FOREIGN KEY (DoctorID) 
 references Docter(DoctorID); 

create table Docter(

 DoctorID varchar (15),
 Name varchar (15),
 Age int,
 Gender char,
 Address varchar(20),
 primary key(DoctorID) 
);

 alter table Docter add column DoctorWard varchar(15);


create table Lab(
 LabID varchar (15),
 TestDate date,
 TestAmount varchar(20),
 PatientID varchar(15),
 DoctorID varchar(15),
  primary key(LabID)

 
);

 ALTER TABLE Lab
 ADD FOREIGN KEY (DoctorID) 
 references Docter(DoctorID);

 ALTER TABLE Lab
 ADD FOREIGN KEY (PatientID) 
 references Patient(PatientID);
 
 Alter table Lab (rename) column TestDate to Amount;
 Alter table Lab modify TestAmount   ;
 
 