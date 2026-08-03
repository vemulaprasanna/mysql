**DBMS - Database Management System**
- HDBMS  (heirarchical DBMS)
    - Tree structure and child/node must contain one parent
- NDBMS  (Network DBMS)
    - Graphs
- RDBMS  (Relational DBMS)
    - Tables/Relation
- ODBMS  (Object-oriented DBMS)
    - objects
- NoSQL
    - Json, key-value pairs

**Concepts:**
- Table
- Rows
- Columns
- Schema
- Relational (SQL)
- Non-Relational (No-SQL)

**Limitations or advantages or why?**
- Lack of conqurency
- Security
- Recovery
- Scalability
- Redundency

**ER Model (Entity Relationship)**
- Entity, which represents in Rectangular shape
- Week Entity, in double rectanle
- Relationship, dimond
- Atrribute, Elipse
- Derived Attribute, dotted Elipse
- Multivalued Attribute, double Elipse
- Flow, line
- Composite Attribute, connected elipses/nodes

**Cardinality**
- One_to_One (1:1)
- One_to_Many (1:M)
- Many_to_One (M:1)
- Many_to_Many (M:N)

**ACID Properties**
- Automacity,  All are nothing, if any changes occur will effect whole thing otherwise remains same as before.
- Consistency, The DB must be consistent before and after the transaction.
- Isolation, Multiple transactions occur independently without interference.
- Durability, The changes of success transaction remains same even if system fails or crashes

**SQL Sub Languages**
- DDL (Data Defination L)
- DML (Data Manipulation L)
- DQL (Data Query L)
- DCL (Data Control L)
- TCL (Transaction Control L)

**DDL**
- Create, Drop, Alter, Truncate, Rename
- To define or modify the structure of db or tables

**DML**
- Insert, Update, Delete
- To modify data in dbs not structure

**DCL**
- Grant, Revoke
- To control access or permissions

**TCL**
- Commit, Rollback, Save Point
- To manage transactions in the db

**DQL**
- Select
- To access or retrive the data from db

**DataTypes**
- Integer (tinyint, samllint, mediumint, int/integer, bigint)
- Decimal (decimal(p,s) or numeric(p,s), float(p), double) p=Precise, s=Scale
- Date and Time (date 'yy-mm-dd', DATETIME 'yy-mm-dd hh:mm:ss', TIMESTAMP 'yy-mm-dd hh:mm:ss', TIME 'hh:mm:ss', YEAR 'yyyy') 
- String (CHAR(n), VARCHAR(n), text, tinytext, mediumtext, lonetext, enum, set)
- Binary (binary(n), varbinary(n), tinyblob, blob, mediumblob, longblob)
- Boolean (boolean or bool) (0=false, 1=true)

**Keys**
- Primary
- Foreign
- Candidate
- Alternate
- Composite
- Super

**Key Constraints**
- Primary
- Foreign
- Unique
- Not Null
- Check
- Default

**Normalization**
- 1NF, 2NF, 3NF, BCNF (Boyce-Codd's NF)
**Clauses:**
- where
- group by
- having
- order by

**Execution Order**
- FROM       Get tables
- WHERE      Filter rows
- GROUP BY   Group rows
- HAVING     Filter groups
- SELECT     Choose columns
- Distinct   Remove duplicates
- ORDER BY   Sort result
