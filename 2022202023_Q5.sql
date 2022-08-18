select Essn,count(*) from DEPENDENT where Essn IN (select Mgr_ssn from DEPARTMENT where Dnumber IN (select Dnumber from DEPT_LOCATIONS group by Dnumber having count(*) > 1)) group by Essn;
