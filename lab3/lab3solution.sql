DB-LAB-3 Solution:
.......................
INSERT INTO department VALUES ('105','CSE','block a');
INSERT INTO department VALUES ('101','CE','block b');
INSERT INTO department VALUES ('102','ME','block c');
INSERT INTO department VALUES ('110','EEE','block d');
INSERT INTO department VALUES ('157','AIML','block e');

INSERT INTO faculty VALUES (201, 'Mr. Sujeet Kumar', 'Assistant Professor', NULL, '105');
INSERT INTO faculty VALUES (202, 'Mr. Amit Kumar', 'Assistant Professor', NULL, '105');
INSERT INTO faculty VALUES (203, 'Mr. Kunal Kumar', 'Assistant Professor', NULL, '101');
INSERT INTO faculty VALUES (204, 'Mr. Akhilesh Kumar', 'Assistant Professor', NULL, '101');
INSERT INTO faculty VALUES (205, 'Dr. Ajay Giri', 'Assistant Professor', NULL, '102');
INSERT INTO faculty VALUES (206, 'Mr. Uttam Kumar', 'Assistant Professor', NULL, '102');
INSERT INTO faculty VALUES (207, 'Mr. H. K. Mishra', 'Assistant Professor', NULL, '110');
INSERT INTO faculty VALUES (208, 'Ms. Mitesh Kumar', 'Assistant Professor', NULL, '110');
INSERT INTO faculty VALUES (209, 'Md. Haque', 'Assistant Professor', NULL, '157');
INSERT INTO faculty VALUES (210, 'Mr. Praveen Kumar', 'Assistant Professor', NULL, '157');

INSERT INTO course VALUES (301, 'Database Management System', 4, '105', 201);
INSERT INTO course VALUES (302, 'Operating System', 4, '105', 202);
INSERT INTO course VALUES (303, 'Data Structures', 4, '105', 201);
INSERT INTO course VALUES (304, 'Structural Analysis', 4, '101', 203);
INSERT INTO course VALUES (305, 'Engineering Mechanics', 3, '101', 204);
INSERT INTO course VALUES (306, 'Thermodynamics', 4, '102', 205);
INSERT INTO course VALUES (307, 'Strength of Materials', 4, '102', 206);
INSERT INTO course VALUES (308, 'Basic Electrical Engineering', 3, '110', 207);
INSERT INTO course VALUES (309, 'Power Systems', 4, '110', 208);
INSERT INTO course VALUES (310, 'Machine Learning Fundamentals', 4, '157', 209);

INSERT INTO student VALUES (06, 'Amit Kumar', DATE '2005-02-04', 'M', '9123456701', '105');
INSERT INTO student VALUES (53, 'Amarjeet Kumar', DATE '2003-08-21', 'M', '9123456702', '105');
INSERT INTO student VALUES (27, 'Nisha Kumari', DATE '2004-01-15', 'M', '9123456703', '105');
INSERT INTO student VALUES (404, 'Priya Singh', DATE '2003-11-30', 'F', '9123456704', '101');
INSERT INTO student VALUES (405, 'Vikash Kumar', DATE '2002-07-10', 'M', '9123456705', '101');
INSERT INTO student VALUES (406, 'Neha Kumari', DATE '2004-03-18', 'F', '9123456706', '102');
INSERT INTO student VALUES (407, 'Rahul Kumar', DATE '2003-06-25', 'M', '9123456707', '102');
INSERT INTO student VALUES (408, 'Pooja Kumari', DATE '2004-09-05', 'F', '9123456708', '110');
INSERT INTO student VALUES (409, 'Shubham Kumar', DATE '2002-12-14', 'M', '9123456709', '110');
INSERT INTO student VALUES (410, 'Kavita Kumari', DATE '2003-04-08', 'F', '9123456710', '157');

INSERT INTO enrollment VALUES (06, 301, 4, 'A');
INSERT INTO enrollment VALUES (53, 302, 4, 'B+');
INSERT INTO enrollment VALUES (27, 303, 4, 'A');
INSERT INTO enrollment VALUES (404, 304, 5, 'B');
INSERT INTO enrollment VALUES (405, 305, 5, 'A');
INSERT INTO enrollment VALUES (406, 306, 5, 'A+');
INSERT INTO enrollment VALUES (407, 307, 5, 'B+');
INSERT INTO enrollment VALUES (408, 308, 3, 'A');
INSERT INTO enrollment VALUES (409, 309, 3, 'B');
INSERT INTO enrollment VALUES (410, 310, 4, 'A');

UPDATE faculty SET email = 'ksujeet.cs@gmail.com' WHERE faculty_id = 201;
UPDATE faculty SET email = 'amitbcebhagalpur@gmail.com' WHERE faculty_id = 202;
UPDATE faculty SET email = 'kunal1989kumar@gmail.com' WHERE faculty_id = 203;
UPDATE faculty SET email = 'akhileshkumar3804@gmail.com' WHERE faculty_id = 204;
UPDATE faculty SET email = 'ajay_giri05@rediffmail.com' WHERE faculty_id = 205;
UPDATE faculty SET email = 'uttamiitp1@gmail.com' WHERE faculty_id = 206;
UPDATE faculty SET email = 'hare.dbit@gmail.com' WHERE faculty_id = 207;
UPDATE faculty SET email = 'mitesh.sva@gmail.com' WHERE faculty_id = 208;
UPDATE faculty SET email = 'ehtasham47@gmail.com' WHERE faculty_id = 209;
UPDATE faculty SET email = 'praveenkumaryadav782@gmail.com' WHERE faculty_id = 210;

SELECT * FROM department;
SELECT * FROM faculty;
SELECT * FROM course;
SELECT * FROM student;
SELECT * FROM enrollment;