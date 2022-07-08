show databases;
create database	leetcode;
use leetcode;

/*
leetcode 586
*/
drop table orders;
create table orders(
			order_number int,
			customer_number int);
insert into orders values (1,1),(2,2),(3,3),(4,3);
select * from orders;

select customer_number
from orders
group by customer_number
order by count(customer_number) desc
limit 1
;



/*
leetcode 608
*/
drop table tree;
create table tree (
	id int,
    p_id int
)
;
insert into tree values (1,null),(2,1),(3,1),(4,2),(5,2);
select * from tree;


select distinct id,(case when p_id is null then "Root"
				when s_id is null then "Leaf"
                else "Inner" end) as type
from (
select t1.id as id,t1.p_id as p_id,t2.id as s_id
from tree t1 left join tree t2 on 
t1.id = t2.p_id) t3
order by id asc
; 
select id,
    case when p_id is null then 'Root'
         when id in (select p_id from tree) then 'Inner'
         else 'Leaf'
    end as Type
from tree
order by id;
                

/*
176 
*/

DROP TABLE
IF
    EXISTS Employee;
CREATE TABLE Employee ( Id INT, Salary INT );
INSERT INTO Employee ( Id, Salary )
VALUES
    ( 1, 100 ),
    ( 2, 200 ),
    ( 3, 300 );
INSERT INTO Employee ( Id, Salary )
VALUES
    ( 4, 400 ),
    ( 5, 300 ),
    ( 6, 400 );
select * from Employee;
select max(salary)
from employee
where salary <> (select max(salary) from employee)
;
select salary, dense_rank() over(order by salary desc)
from employee; 
select salary, rank() over(order by salary desc)
from employee; 
select salary, row_number() over(order by salary desc)
from employee; 













            






























