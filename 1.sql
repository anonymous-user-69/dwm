USE DemoDWM
GO

CREATE TABLE Students
(StudentID int NOT NULL PRIMARY KEY NONCLUSTERED,
FirstName varchar(50) NOT NULL,
LastName Varchar(50) NOT NULL,
Gender Char(20))
GO

CREATE TABLE Courses
(CoursesID int NOT NULL PRIMARY KEY NONCLUSTERED,
CourseName varchar(50) NOT NULL,
Department Varchar(50) NOT NULL,
Instructor Varchar(50))
GO 

CREATE TABLE Terms
(TermID int NOT NULL PRIMARY KEY NONCLUSTERED,
TermName varchar(50) NOT NULL,
AcademicYear int   )
GO

CREATE TABLE Instructors
(InstructorID int NOT NULL PRIMARY KEY NONCLUSTERED,
InstructorName varchar(50) NOT NULL,
Department Varchar(50) NOT NULL
)
GO

CREATE TABLE FactEnrollments
(
StudentID int NOT NULL REFERENCES Students(StudentID),
CoursesID int NOT NULL REFERENCES Courses(CoursesID),
TermID int NOT NULL REFERENCES Terms(TermID),
InstructorID int NOT NULL REFERENCES Instructors(InstructorID),
EnrollmentDate DATE
  Constraint[PK_EnrollmentID] PRIMARY KEY NONCLUSTERED
(
[StudentID],[CoursesID],[TermID],[InstructorID]
)  
)
GO