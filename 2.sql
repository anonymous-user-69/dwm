USE HospitalD
GO

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY NONCLUSTERED,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    address VARCHAR(100),
    phone_number VARCHAR(15)
)
GO 

CREATE TABLE Physicians (
    physician_id INT PRIMARY KEY NONCLUSTERED,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialty VARCHAR(50),
    contact_info VARCHAR(100)
)
GO

CREATE TABLE Departments (
    department_id INT PRIMARY KEY NONCLUSTERED,
    department_name VARCHAR(50),
    head_of_department VARCHAR(100),
    location VARCHAR(100)
)
GO

CREATE TABLE Admissions (
    admission_id INT PRIMARY KEY NONCLUSTERED,
    patient_id INT,
    admission_date DATE,
    discharge_date DATE,
    admission_type VARCHAR(20),
    diagnosis VARCHAR(100)
)
GO

CREATE TABLE Patient_Encounters_Fact
(
patient_id int NOT NULL REFERENCES Patients(patient_id),
physician_id int NOT NULL REFERENCES Physicians(physician_id),
department_id int NOT NULL REFERENCES Departments(department_id),
admission_id int NOT NULL REFERENCES Admissions(admission_id),
encounter_date DATE
  Constraint[PK_encounter_id] PRIMARY KEY NONCLUSTERED
(
[patient_id],[physician_id],[department_id],[admission_id]
)  
)
GO