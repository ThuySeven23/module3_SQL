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
select *
from class c 
where c.stardate like "%-12-%"
;
-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select sb.sub_name , sb.credit
from `subject` sb 
where sb.credit between 3 and 5
;
-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
update student s
set s.class_id = 2
where s.student_name = "Hung"
;
select *
from student
; 
-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select s.student_name , sb.sub_name , m.mark
from mark m
join student s on m.mark_id = s.student_id  
join `subject` sb on m.mark_id = sb.sub_id
order by m.mark DESC 
;

