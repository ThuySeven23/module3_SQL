create table Class(
	id int , 
	`name` varchar(50)
);
insert into Class
value	(1 , "Nguyen Van Hoang") ,
		(2 , "Nguyen Ly Binh") ,
		(3 , "Nguyen Thanh Minh") ,
		(4 , "Truong Thanh Tam") ,
		(5 , "Nguyen Quang Bao")
;
select * from Class;
delete from Class where id in(1,2,3,4,5);






create table Teacher(
	id int , 
    `name` varchar(50), 
    age int , 
    country varchar(50)
);
insert into Teacher
value	(1 , "Giao Vien An" , 26 , "Quang Nam") ,
		(2 , "Giao Vien Hoang" , 29 , "Quang Nam") ,
        (3 , "Giao Vien Trang" , 24 , "Quang Nam") ,
        (4 , "Giao Vien Trinh" , 28 , "Quang Nam") 
;
select * from Teacher;


