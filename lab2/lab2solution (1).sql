CREATE TABLE Department (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50) NOT NULL UNIQUE,
    office_location VARCHAR2(50)
);

CREATE TABLE Faculty (
    faculty_id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    designation VARCHAR2(30),
    email VARCHAR2(50) UNIQUE,
    dept_id NUMBER,
    CONSTRAINT fk_faculty_dept
        FOREIGN KEY (dept_id)
        REFERENCES Department(dept_id)
);

CREATE TABLE Course (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(50) NOT NULL,
    credits NUMBER CHECK (credits > 0),
    dept_id NUMBER,
    faculty_id NUMBER,
    CONSTRAINT fk_course_dept
        FOREIGN KEY (dept_id)
        REFERENCES Department(dept_id),
    CONSTRAINT fk_course_faculty
        FOREIGN KEY (faculty_id)
        REFERENCES Faculty(faculty_id)
);

CREATE TABLE Student (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50) NOT NULL,
    date_of_birth DATE,
    gender CHAR(1) CHECK (gender IN ('M','F')),
    contact_number VARCHAR2(15),
    dept_id NUMBER,
    CONSTRAINT fk_student_dept
        FOREIGN KEY (dept_id)
        REFERENCES Department(dept_id)
);

CREATE TABLE Enrollment (
    student_id NUMBER,
    course_id NUMBER,
    semester VARCHAR2(10),
    grade CHAR(2),
    CONSTRAINT pk_enrollment
        PRIMARY KEY (student_id, course_id),
    CONSTRAINT fk_enroll_student
        FOREIGN KEY (student_id)
        REFERENCES Student(student_id),
    CONSTRAINT fk_enroll_course
        FOREIGN KEY (course_id)
        REFERENCES Course(course_id)
);
