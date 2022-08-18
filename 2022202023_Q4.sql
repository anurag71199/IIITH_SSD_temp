select Dnumber,count(*) from DEPT_LOCATIONS where Dnumber IN (select Dnumber from DEPARTMENT where Mgr_ssn IN (select Essn from DEPENDENT group by Essn having count(*) > 1)) group by Dnumber;
