create database mysql_db;
use mysql_db;
create table db( 
id integer primary key auto_increment,
name varchar(255) default "-",
created_at timestamp
);
alter table db add column email varchar(255);
alter table db rename column email to email_e;
alter table db modify column email_e integer;

create table store (
id_st integer primary key auto_increment,
order_date DATE,
constraint fk_cust foreign key (id) REFERENCES db(id) on delete cascade 
);
alter table store add column id integer ;
