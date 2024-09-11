select 
       st.student_id ,
        st.student_name,
        S.subject_name,
        count(E.subject_name)as attended_exams
from 
    Students st
cross join 
    Subjects S
  LEFT join 
    Examinations E on st.student_id=E.student_id and S.subject_name =E.subject_name
group by  st.student_id ,
        st.student_name,
        S.subject_name

order by  student_id,subject_name