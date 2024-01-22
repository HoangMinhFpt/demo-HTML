USE Testdemo
GO

SELECT * FROM dbo.students

SELECT nameStudent, age INTO agestudent FROM dbo.students

SELECT * FROM agestudent;

UPDATE dbo.students SET age = 35 WHERE id='3';
-- TAO VIEW
CREATE VIEW TestView AS
SELECT * FROM dbo.students;

SELECT * FROM DBO.TestView;
-- UPDATE VIEW
ALTER VIEW TestView as
SELECT name, email FROM DBO.students;
