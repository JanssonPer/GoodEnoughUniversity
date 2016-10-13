
USE GoodEnoughUniversity
GO

INSERT INTO Student (ssn, studentName, studentAddress, studentType)
Values ('111', 'Erik', 'Arkivgatan', 'SwedishStudent');
GO

INSERT INTO Student (ssn, studentName, studentAddress, studentType)
Values ('222', 'Nils', 'Arkivgatan', 'SwedishStudent');
GO

INSERT INTO Student (ssn, studentName, studentAddress, studentType)
Values ('333', 'Per', 'Kämmnärsgatan', 'SwedishStudent');
GO

INSERT INTO Student (ssn, studentName, studentAddress, studentType)
Values ('444', 'Martin', 'Delphigatan', 'SwedishStudent');
GO

INSERT INTO Student (ssn, studentName, studentAddress, studentType)
Values ('555', 'Bob', 'Singaporegatan', 'ExchangeStudent');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Swe101', 'Introduction to Swedish');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Swe102', 'Basic Swedish', 'Swe101');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Swe103', 'Advanced Swedish', 'Swe102');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eng101', 'Introduction to English');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eng102', 'Basic English', 'Eng101');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eng103', 'Advanced English', 'Eng102');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eco101', 'Introduction to Economics');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eco102', 'Basic Economics', 'Eco101');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eco103', 'Advanced Swedish', 'Eco102');
GO

--Swedish
INSERT INTO Section(sectionCode, courseCode)
Values ('Read1', 'Swe101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write1', 'Swe101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Speak1', 'Swe101');
GO

INSERT INTO Section(sectionCode, courseCode)
Values ('Read2', 'Swe102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write2', 'Swe102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Speak2', 'Swe102');
GO

INSERT INTO Section(sectionCode, courseCode)
Values ('Read3', 'Swe103');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write3', 'Swe103');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Speak3', 'Swe1013');
GO

--English
INSERT INTO Section(sectionCode, courseCode)
Values ('Read1', 'Eng101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write1', 'Eng101');
GO

INSERT INTO Section(sectionCode, courseCode)
Values ('Read2', 'Eng102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write2', 'Eng102');
GO

INSERT INTO Section(sectionCode, courseCode)
Values ('Read3', 'Eng103');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write3', 'Eng103');
GO

-- Eco
INSERT INTO Section(sectionCode, courseCode)
Values ('Ad1', 'Eco101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Tax1', 'Eco101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Stock1', 'Eco101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Ad2', 'Eco102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Tax2', 'Eco102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Stock2', 'Eco102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('org1', 'Eco103');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('org2', 'Eco103');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Tax3', 'Eco103');
GO

--assignments

--101 eco
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Tax1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Tax1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Tax1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Ad1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Ad1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Ad1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Stock1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Stock1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Stock1','Eco101');
GO

--Eco102

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Tax2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Tax2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Tax2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Ad2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Ad2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Ad2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Stock2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Stock2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Stock2','Eco102');
GO

--eco103
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Org1','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Org1','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Org1','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Org2','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Org2','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Org2','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Tax3','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Tax3','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Tax3','Eco103');
GO

--101 introduction to Swedish
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 3', 1, 'Read1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 3', 1, 'Write1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 1', 3.5, 'Speak1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Speak1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 3', 1, 'Speak1','Swe101');
GO

--- basic Swedish
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Read2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Write2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Speak2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Speak2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Speak2','Swe102');
GO

--Advanced Swedish

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Read3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Write3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Speak3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Speak3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Speak3','Swe103');
GO

--101 Introduction to English
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 3', 1, 'Read1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 3', 1, 'Write1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 1', 3.5, 'Speak1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Speak1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 3', 1, 'Speak1','Eng101');
GO

--- basic Swedish
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Read2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Write2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Speak2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Speak2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Speak2','Eng102');
GO

--Advanced Swedish

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Read3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Write3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Speak3','Eng103');
GO

-- Studied

	INSERT INTO Studied( grade, ssn, courseCode) 
	Values (5,'111', 'Swe101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (2,'222', 'Swe101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Swe101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3,'111', 'Swe102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (4,'222', 'Swe102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Swe102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (1,'111', 'Eco101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (4,'222', 'Eco101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Eco101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3,'111', 'Eco101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (4,'222', 'Eco101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Eco101' );
GO

--Studies

INSERT INTO Studies(ssn, courseCode) 
	Values ('111', 'Swe103' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('222', 'Swe103' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('333', 'Swe103' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('111', 'Eco102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('222', 'Eco102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Eco102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('111', 'Eng101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('222', 'Eng101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Eng101' );
GO

--StudentPhone 

	INSERT INTO Student(ssn, studentPhone) 
	Values (111, '076111111' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (111, '076111112' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (111, '076111113' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (222, '076222222' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (222, '076222223' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (333, '076333333' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (444, '076444444' );
GO

INSERT INTO Student (ssn, studentName, studentAddress, studentType)
Values ('111', 'Erik', 'Arkivgatan', 'Swedish student');
GO

INSERT INTO Student (ssn, studentName, studentAddress, studentType)
Values ('222', 'Nils', 'Arkivgatan', 'Swedish student');
GO

INSERT INTO Student (ssn, studentName, studentAddress, studentType)
Values ('333', 'Per', 'Kämmnärsgatan', 'Swedish student');
GO

INSERT INTO Student (ssn, studentName, studentAddress, studentType)
Values ('444', 'Martin', 'Delphigatan', 'Swedish student');
GO

INSERT INTO Student (ssn, studentName, studentAddress, studentType)
Values ('555', 'Bob', 'Singaporegatan', 'Exchange student');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Swe101', 'Introduction to Swedish');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Swe102', 'Basic Swedish', 'Swe101');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Swe103', 'Advanced Swedish', 'Swe102');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eng101', 'Introduction to English');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eng102', 'Basic English', 'Eng101');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eng103', 'Advanced English', 'Eng102');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eco101', 'Introduction to Economics');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eco102', 'Basic Economics', 'Eco101');
GO

INSERT INTO Course(courseCode, courseName, prerequisite) 
Values ('Eco103', 'Advanced Swedish', 'Eco102');
GO

--Swedish
INSERT INTO Section(sectionCode, courseCode)
Values ('Read1', 'Swe101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write1', 'Swe101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Speak1', 'Swe101');
GO

INSERT INTO Section(sectionCode, courseCode)
Values ('Read2', 'Swe102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write2', 'Swe102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Speak2', 'Swe102');
GO

INSERT INTO Section(sectionCode, courseCode)
Values ('Read3', 'Swe103');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write3', 'Swe103');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Speak3', 'Swe1013');
GO

--English
INSERT INTO Section(sectionCode, courseCode)
Values ('Read1', 'Eng101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write1', 'Eng101');
GO

INSERT INTO Section(sectionCode, courseCode)
Values ('Read2', 'Eng102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write2', 'Eng102');
GO

INSERT INTO Section(sectionCode, courseCode)
Values ('Read3', 'Eng103');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Write3', 'Eng103');
GO

-- Eco
INSERT INTO Section(sectionCode, courseCode)
Values ('Ad1', 'Eco101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Tax1', 'Eco101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Stock1', 'Eco101');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Ad2', 'Eco102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Tax2', 'Eco102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Stock2', 'Eco102');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('org1', 'Eco103');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('org2', 'Eco103');
GO

INSERT INTO Section(sectionCode, courseCode) 
Values ('Tax3', 'Eco103');
GO

--assignments

--101 eco
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Tax1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Tax1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Tax1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Ad1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Ad1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Ad1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Stock1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Stock1','Eco101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Stock1','Eco101');
GO

--Eco102

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Tax2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Tax2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Tax2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Ad2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Ad2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Ad2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Stock2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Stock2','Eco102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Stock2','Eco102');
GO

--eco103
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Org1','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Org1','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Org1','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Org2','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Org2','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Org2','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Tax3','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Tax3','Eco103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Tax3','Eco103');
GO

--101 introduction to Swedish
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 3', 1, 'Read1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 3', 1, 'Write1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 1', 3.5, 'Speak1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Speak1','Swe101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 3', 1, 'Speak1','Swe101');
GO

--- basic Swedish
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Read2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Write2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Speak2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Speak2','Swe102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Speak2','Swe102');
GO

--Advanced Swedish

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Read3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Write3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Speak3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Speak3','Swe103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Speak3','Swe103');
GO

--101 Introduction to English
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 3', 1, 'Read1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 3', 1, 'Write1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 1', 3.5, 'Speak1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Speak1','Eng101');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 3', 1, 'Speak1','Eng101');
GO

--- basic Swedish
INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Read2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Write2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Speak2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
		Values ('Assignment 2', 3.5, 'Speak2','Eng102');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
		Values ('Assignment 3', 1, 'Speak2','Eng102');
GO

--Advanced Swedish

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 1', 3.5, 'Read3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
Values ('Assignment 2', 3.5, 'Read3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
Values ('Assignment 3', 1, 'Read3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 1', 3.5, 'Write3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode) 
	Values ('Assignment 2', 3.5, 'Write3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)
	Values ('Assignment 3', 1, 'Write3','Eng103');
GO

INSERT INTO Assignment( assignmentName, credits, sectionCode, courseCode)	
		Values ('Assignment 1', 3.5, 'Speak3','Eng103');
GO

-- Studied

	INSERT INTO Studied( grade, ssn, courseCode) 
	Values (5,'111', 'Swe101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (2,'222', 'Swe101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Swe101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3,'111', 'Swe102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (4,'222', 'Swe102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Swe102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (1,'111', 'Eco101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (4,'222', 'Eco101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Eco101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3,'111', 'Eco101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (4,'222', 'Eco101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Eco101' );
GO

--Studies

INSERT INTO Studies(ssn, courseCode) 
	Values ('111', 'Swe103' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('222', 'Swe103' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('333', 'Swe103' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('111', 'Eco102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('222', 'Eco102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Eco102' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('111', 'Eng101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values ('222', 'Eng101' );
GO

INSERT INTO Studied( grade, ssn, courseCode) 
	Values (3, '333', 'Eng101' );
GO

--StudentPhone 

	INSERT INTO Student(ssn, studentPhone) 
	Values (111, '076111111' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (111, '076111112' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (111, '076111113' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (222, '076222222' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (222, '076222223' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (333, '076333333' );
GO

INSERT INTO Student(ssn, studentPhone) 
	Values (444, '076444444' );
GO
