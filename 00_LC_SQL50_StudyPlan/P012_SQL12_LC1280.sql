-- https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50

-- 1280. Students and Examinations
Select 
s.student_id
, s.student_name
, sub.subject_name
, Count(e.subject_name) as 'attended_exams'
from Students s
cross join Subjects sub
left join Examinations e 
    on e.subject_name = sub.subject_name
    and e.student_id = s.student_id
group by s.student_id, sub.subject_name
order by s.student_id, sub.subject_name