-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select *
from subject s
where s.credit = (SELECT MAX(credit) FROM subject);


-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select sj.sub_name , m.mark
from subject sj join mark m
on sj.sub_id = m.sub_id
where m.mark = (select max(mark) from mark)
;
-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select s.student_name , s.address , s.phone , s.status , avg(mark) as DTB
from student s , mark m
where s.student_id = m.student_id
group by s.student_id
order by avg(m.mark) desc
;
