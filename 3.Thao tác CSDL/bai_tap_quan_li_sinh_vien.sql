select *  from class c 
;
select *  from student s 
;
select *  from mark m
;
select * from `subject` sj
;

insert into mark values 
(1 , 1 , 1 , 8 , 1) ,
(2 , 1 , 2 , 10 , 2) ,
(3 , 2 , 1 , 12 , 1)
;
insert into `subject` values 
(1 , "CF" , 5 , 1) ,
(2 , "C" , 6 , 1) ,
(3 , "HDJ" , 5 , 1) ,
(4 , "RDBMS" , 10 , 1)
;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select s.student_id as ID , s.student_name as StudentName 
from student s 
where s.student_name like "h%"
;
-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select c.class_id as ID , c.stardate as StartDate 
from class c 
where s.student_name like ""
;
-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.

-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.

