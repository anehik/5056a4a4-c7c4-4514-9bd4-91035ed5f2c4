/*
 SECTION: Group exercises
 DESCRIPTION: Write a valid SQL query to solve each problem.
 */


-- A) Get all the unique department names.
SELECT DISTINCT department FROM course;
-- B) Get the top 10 female students (first_name, last_name, age, gpa) with the best GPA scores and order by age (asc).
SELECT
	first_name AS "First name",
	last_name AS "Last name",
	age AS "age",
	gpa AS "GPA"
from
	student
where
	gender = 'female'
order by
	gpa desc,
	age asc,
	first_name asc,
	last_name asc
limit 10
;
-- C) Count the number of male/female students that are at least 25 years old.
SELECT
	gender AS "Gender",
	count(gender) AS "Count"
FROM
	student
where
	age >= 25
group by gender
;
-- D) Get the number of male/female students that were accepted
select
	gender,
	count(gender)
from
	student inner oin enrollment on student.id = enrollment.student_id
wherej
    enrollment.approved = 1
group by
    gender
;
-- E) Get the min, average, and max GPA of the accepted male students that are less than 20 years old.
SELECT
    min(gpa),
    avg(gpa),
    max(gpa)
from
    student inner join enrollment on student.id = enrollment.student_id
where
    enrollment.approved = 1
    and student.gender = 'male' AND age <=20
;

SELECT
    *
FROM
    (
        SELECT
            gender,
               Min(gpa),
               AVG(gpa),
               MAX(gpa),
        FROM
             student inner join enrollment on student.id = enrollment.student_id
        where student.age <= 20 AND enrollment.approved = 1
        group by gender
        ) gender_aggregate
where
    gender_aggregate.gender = 'male'
;


-- F) Get the number of enrollments to courses that take longer than 2 years to finalize.
SELECT
    count(*)
FROM
    course c inner join enrollment e on c.id = e.course_id
where
    c.years > 2 and e.approved = 1
;
-- G) Get the number of male/female student that will take a course from the 'Statistics' department.
SELECT
  count(*)
from
    student s
        inner join enrollment e on s.id = e.student_id
        inner join course c on e.course_id = c.id
where
    lower(c.department)= 'statistics'
;
/*
 SECTION: Individual exercises
 DESCRIPTION: Write a valid SQL query to solve each problem.
 */

-- A) Count the number of courses per department
SELECT
    count(*), department
From
     course
group by
    department
;
-- B) How many male/female students were accepted?
SELECT
    count(*),gender
from
    student inner join enrollment on student.id = enrollment.student_id
where
    enrollment.approved = 1
group by
    gender
;
-- C) How many students were accepted per course?
SELECT course.name, count(*) FROM student INNER JOIN enrollment ON student.id = enrollment.student_id INNER JOIN course on enrollment.course_id = course.id WHERE enrollment.approved =1 GROUP BY course.name;
-- D) What's the average age and gpa per course?
SELECT course.name, avg(age), avg(gpa) FROM student INNER JOIN enrollment ON student.id = enrollment.student_id INNER JOIN course on enrollment.course_id = course.id GROUP BY course.name;
-- E) Get the average number of years the enrolled (approved) female student will study.
SELECT avg(course.years) FROM student INNER JOIN enrollment ON student.id = enrollment.student_id INNER JOIN course on enrollment.course_id = course.id WHERE enrollment.approved = 1 AND student.gender = 'female';

