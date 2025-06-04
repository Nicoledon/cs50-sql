create index "enroll_course" on enrollments(
course_id);
create index "enroll_stu" on enrollments (student_id);
create index "course_depart" on courses(department);
create index "course_number" on courses(number);
create index "course_semester" on courses(semester);
create INDEX "requirement_course" on satisfies(course_id);




