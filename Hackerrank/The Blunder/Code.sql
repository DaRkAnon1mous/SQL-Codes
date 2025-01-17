/*
Enter your query here.
*/
Alter table EMPLOYEES ADD Mis_Salary varchar(20);
Update EMPLOYEES Set Mis_Salary = Salary;
Update EMPLOYEES set Mis_Salary = Replace(Mis_Salary,'0','');
Select CEIL(Avg(Salary)-Avg(Mis_Salary)) from Employees;
