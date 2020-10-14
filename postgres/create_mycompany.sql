CREATE TABLE dept (
	deptno NUMERIC PRIMARY KEY, 
	dname VARCHAR(20) NOT NULL, 
	loc VARCHAR(20)
);

CREATE TABLE emp (
empno serial NOT NULL,
ename VARCHAR (20) NOT NULL,
job VARCHAR (14) NOT NULL,
mgr NUMERIC(4) NOT NULL,
hiredate DATE, 
sal NUMERIC (7,2) NOT NULL,
comm NUMERIC (7,2),
deptno NUMERIC(2),
PRIMARY KEY (empno),
FOREIGN KEY (deptno) REFERENCES dept(deptno),
CHECK (sal > 0),
CHECK (comm >= 0)
);

CREATE TABLE salgrade (
grade NUMERIC(1), 
losal NUMERIC (7,2) NOT NULL, 
hisal NUMERIC (7,2), 
PRIMARY KEY (grade), 
CHECK (losal > 0), 
CHECK (hisal >= losal)
);

CREATE TABLE customer (
cno serial NOT NULL, 
orderdate DATE, 
name VARCHAR(15),
city VARCHAR(15), 
country VARCHAR(15),
pno NUMERIC(4), 
description VARCHAR(20),
qty NUMERIC(4) CHECK (qty >= 1), 
PRIMARY KEY (cno)
);

create table proj(
	projno serial PRIMARY KEY,
	pname VARCHAR(32),
	budget Numeric(8,2) NOT NULL check (budget >= 0)
	
);

create table empproj_expenses(
	emp integer references emp(empno),
	projno integer references proj(projno),
	claimdate DATE NOT NULL,
	claimtotal NUMERIC(7,2),
	PRIMARY KEY (emp, projno, claimdate)
);