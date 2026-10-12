select db_name();
use tech_panda;
select * from sys.tables;
--- unable to create order table becoz order is a reserved keyword---
create table tp1.orders (orderid int, productname varchar(50), amount int, quantity decimal(20,2) );

alter table tp1.orders add purchasedate date;
select * from tp1.orders;

alter table tp1.orders drop column purchasedate;

alter table tp1.orders alter column quantity decimal(10,2);

select * from information_schema.columns where table_schema = 'tp1' and table_name = 'orders' and column_name = 'quantity';

insert into tp1.orders (orderid, productname, amount, quantity) values (101, 'wire mesh', 15000, 12.5);
insert into tp1.orders (orderid, productname, amount, quantity) values (102, 'square channel', 80000, 20.5);
insert into tp1.orders (orderid, productname, amount, quantity) values (103, 'ms plate', 95000, 180.0);
insert into tp1.orders (orderid, productname, amount, quantity) values (104, 'ss tube', 60000, 140.5);

update tp1.orders set amount = 90000 where orderid = 104;
update tp1.orders set quantity = 25.5 where productname = 'wire mesh';

delete tp1.orders where orderid = 104;





