--Stored procedures are sp statements that are precreated and parsed, so that they are ready to be used directly from the front end without a need to parse the statements repeatedly.
--Whenever a sql statement is executed it will be parsed and if is suceesfull thwn the execution will happen
--With frequently used statements, we can make it as stored procedure and invoke them frequently and the need of parsing will not arise.This is an optimized way of using SQL statements that are executed frequently.

Create Procedure CreateEmployee
(
@empName nvarchar(50),
@empAddress nvarchar(50),
@empSalary money, 
@deptId int,
@empId int output
)
AS 
INSERT INTO Emptable VALUES(@empName, @empAddress, @empSalary,@deptId)
SET @empId=@@IDENTITY
--@@IDENTITY is the id generated after the successfull insertion of the record, this value will be applicable only for identity columns.

Create Procedure CreateDept
(
@deptId int output,
@deptName nvarchar(50)
)
AS 
INSERT INTO DeptTable VALUES( @deptName)
SET @deptId=@@IDENTITY

truncate table empTable;

Create Procedure updateEmployee
(
@empName nvarchar(50),
@empAddress nvarchar(50),
@empSalary money, 
@deptId int,
@empId int
)
AS
Update Emptable set empName =@empName, empAddress = @empAddress, @empSalary=@empSalary, DeptId =@deptId where empId =@empId
