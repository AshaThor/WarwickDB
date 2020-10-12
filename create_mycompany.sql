CREATE DATABASE mycompany;
USE mycompany;
CREATE TABLE dept (deptno int, dname VARCHAR(20) NOT NULL, loc VARCHAR(20), PRIMARY KEY (deptno));

CREATE TABLE emp (
empno INT (4) NOT NULL,
ename VARCHAR (20) NOT NULL,
job VARCHAR (14) NOT NULL,
mgr INT (4) NOT NULL,
hiredate DATE, 
sal NUMERIC (7,2) NOT NULL,
comm NUMERIC (7,2),
deptno INT(2),
PRIMARY KEY (empno),
FOREIGN KEY (deptno) REFERENCES dept(deptno),
CHECK (sal > 0),
CHECK (comm >= 0));

CREATE TABLE salgrade (
grade INT (1), 
losal NUMERIC (7,2) NOT NULL, 
hisal NUMERIC (7,2), 
PRIMARY KEY (grade), 
CHECK (losal > 0), 
CHECK (hisal >= losal)
);

CREATE TABLE customer (
cno int NOT NULL AUTO_INCREMENT, 
orderdate DATE, 
name VARCHAR(15),
city VARCHAR(15), 
country VARCHAR(15),
pno NUMERIC(4), 
description VARCHAR(20),
qty NUMERIC(4) CHECK (qty >= 1), 
PRIMARY KEY (cno));
