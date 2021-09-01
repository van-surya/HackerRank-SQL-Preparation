SELECT s.roll_number, s.name
FROM student_information AS s, faculty_information AS f
WHERE (s.advisor = f.employee_id) AND 
(
    (f.gender = 'M' AND f.salary > 15000) OR
    (f.gender = 'F' AND f.salary > 20000) 
);