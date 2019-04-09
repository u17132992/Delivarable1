CREATE DATABASE Malaria354
GO


CREATE TABLE Prevention (
    PreventionID int IDENTITY(1,1) PRIMARY KEY,
    PreventionDesc varchar(255) NOT NULL,
);

CREATE TABLE Symptom (
    SymptomID int IDENTITY(1,1) PRIMARY KEY,
    SymptomDesc varchar(255) NOT NULL,
);

CREATE TABLE Faq (
   FaqID int IDENTITY(1,1) PRIMARY KEY,
   faqDesc varchar(255) NOT NULL,
);

CREATE TABLE SystemUser (
    UserID int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
	Email varchar(25) NOT NULL,
    
);

CREATE TABLE GeneralInformation (
    GeneralInformationID int IDENTITY(1,1) PRIMARY KEY,
    GeneralDesc varchar(255) NOT NULL,
);

CREATE TABLE MalariaArea (
    AreaID int IDENTITY(1,1) PRIMARY KEY,
    City varchar(50) NOT NULL,
	Province varchar(50) NOT NULL,
	Country varchar(50) NOT NULL,
);

CREATE TABLE Transmission (
    TransmissionID int IDENTITY(1,1) PRIMARY KEY,
    TransmissionDesc varchar(255) NOT NULL,

);

CREATE TABLE Treatment (
    TreatmentID int IDENTITY(1,1) PRIMARY KEY,
    TreatmentDesc varchar(255) NOT NULL,
);

CREATE TABLE FunFact (
    FunfactID int IDENTITY(1,1) PRIMARY KEY,
    FunFactDesc varchar(255) NOT NULL,
);





CREATE TABLE Malaria (
       MalariaID int IDENTITY(1,1) PRIMARY KEY,
	 GeneralInformationID int FOREIGN KEY REFERENCES GeneralInformation(GeneralInformationID ),
	TransmissionID int FOREIGN KEY REFERENCES Transmission (TransmissionID),
	TreatmentID int FOREIGN KEY REFERENCES Treatment(TreatmentID),
	AreaID int FOREIGN KEY REFERENCES MalariaArea(AreaID),
       PreventionID int FOREIGN KEY REFERENCES Prevention(PreventionID),
       FaqID int FOREIGN KEY REFERENCES Faq(FaqID),
	FunfactID int FOREIGN KEY REFERENCES FunFact (FunfactID)
    
);


