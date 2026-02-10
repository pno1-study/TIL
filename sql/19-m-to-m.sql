-- 19-m-to-m.sql

-- 각 학생별 수강 수업 확인
SELECT
	*
FROM students S
INNER JOIN students_courses sc ON s.id=sc.student_id
INNER JOIN courses c ON sc.course_id=c.id;

SELECT *
FROM courses c
INNER JOIN students_courses sc ON c.id=sc.student_id
INNER JOIN students s ON sc.student_id=s.id
ORDER BY c.name;

SELECT
	s.id,
	s.name
FROM students s
INNER JOIN students_courses sc ON s.id = sc.student_id
INNER JOIN courses c ON sc.course_id=c.id
