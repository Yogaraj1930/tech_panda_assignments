---table creation and adding all constraint
select db_name();
use tech_panda;
create table tp1.students ( student_id int primary key, student_name varchar(50) not null, email_id varchar(100) unique, 
							age int check(age >= 18), country varchar(50) default 'India');


--- I have missed the country column in the insert statement, but due to default constraint India have been added
insert into tp1.students (student_id, student_name, email_id, age) values (301, 'hariharan', 'hariharan123@gmail.com', 24);
select * from tp1.students;


--- I have tried insert duplicate student_id, but primary key constraint voilates to insert duplicate value 
insert into tp1.students (student_id, student_name, email_id, age, country) values (301, 'Selva', 'selva123@gmail.com', 26, 'Canada');
--- Now it is been added 
insert into tp1.students (student_id, student_name, email_id, age, country) values (302, 'Selva', 'selva123@gmail.com', 26, 'Canada');


--- I have tried insert null value to the student_name, but the not null constraint voilates to insert null
insert into tp1.students (student_id, student_name, email_id, age, country) values (303, null, 'jaismith123@gmail.com', 29, 'Africa');
--- Now it is been inserted
insert into tp1.students (student_id, student_name, email_id, age, country) values (303, 'jaismith', 'jaismith123@gmail.com', 29, 'Africa');


--- I have tried insert age below 18, but the check constraint voilates to insert age below 18
insert into tp1.students (student_id, student_name, email_id, age, country) values (304,'siva', 'siva123@gmail.com', 17, 'India');
--- Now it is been inserted
insert into tp1.students (student_id, student_name, email_id, age, country) values (304, 'siva', 'siva123@gmail.com', 33, 'India');

--- I have tried insert dupe email which repeate twice, but the unique constraint voilates to insert dupe record
insert into tp1.students (student_id, student_name, email_id, age, country) values (305,'manikandan', 'siva123@gmail.com', 24, 'India');
--- Now it is been inserted
insert into tp1.students (student_id, student_name, email_id, age, country) values (305,'manikandan', 'manikandan123@gmail.com', 24, 'India');

select * from tp1.students;