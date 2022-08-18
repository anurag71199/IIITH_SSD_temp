select Essn,count(*) from WORKS_ON where Essn = (select Mgr_ssn from DEPARTMENT where Dnumber = (select Dnum from PROJECT where Pname='ProductY')) group by Essn;
