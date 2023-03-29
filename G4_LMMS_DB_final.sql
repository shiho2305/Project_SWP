use swp;

drop table Curriculum

create table users2(id int primary key auto_increment,
uname varchar(100),
upwad varchar(50),
uemail varchar(100),
umobile varchar(100),
lockUser int,
roleID int,
CONSTRAINT lien_ket_03 FOREIGN KEY (roleID) REFERENCES role(id)
);

create table Curriculum(
id int,
Code varchar(100) not null Primary key,
Name varchar(1000) not null,
Description varchar(1000),
DecisionNo datetime not null,
TotalCredit int not null,
active boolean
);

CREATE TABLE Subjects (
  id int NOT NULL AUTO_INCREMENT,
  subject_code varchar(10) NOT NULL,
  subject_name varchar(100) NOT NULL,
  description longtext,
  no_credit int NOT NULL,
  degree_level varchar(50) NOT NULL,
  combo_id int NOT NULL,
  status tinyint DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY subject_code_UNIQUE (subject_code)
);

CREATE TABLE Categories (
  id int NOT NULL AUTO_INCREMENT,
  category_name varchar(100) NOT NULL,
   category_detail varchar(100),
  status tinyint DEFAULT NULL,
  PRIMARY KEY (id)
);

create table Syllabus(
syllabusID int Primary key not null auto_increment,
syllabusName text(4000) not null,
syllabusEnglish varchar(100),
noCredit int,
degreeLevel varchar(100),
timeAllocation text(4000),
preRequisite text(4000),
Description text(16000),
studentTask text(16000),
tools text(4000),
scoringScale int,
decisionNo varchar(100) not null,
isApproved varchar(100) not null,
note text(16000),
minAvgMarkToPass int,
isActive varchar(100) not null,
approvedDate varchar(100),
subjectCode varchar(10),
CONSTRAINT lien_ket_01 FOREIGN KEY (subjectCode) REFERENCES Subjects(subject_code),
CONSTRAINT fk_decision FOREIGN KEY (decisionNo) REFERENCES decisionNo(decision_No)
);

-- create table Syllabus(
-- syllabusID int Primary key not null,
-- syllabusName varchar(100) not null,
-- syllabusEnglish varchar(100),
-- noCredit int,
-- degreeLevel varchar(100),
-- timeAllocation varchar(200),
-- preRequisite varchar(100),
-- Description varchar(500),
-- studentTask varchar(100),
-- tools varchar(100),
-- scoringScale int,
-- decisionNo datetime not null,
-- isApproved bit not null default (0),
-- note varchar(100),
-- minAvgMarkToPass int,
-- isActive bit not null default (0),
-- approvedDate date,
-- subjectCode varchar(10),
-- CONSTRAINT lien_ket_01 FOREIGN KEY (subjectCode) REFERENCES Subjects(subject_code)
-- );




create table role(
id int primary key auto_increment,
name varchar(100)
);

create table decisionNo(
decision_No varchar(100) primary key,
decisionName varchar(500) not null,
approvedDate varchar(500) not null,
note varchar(1000) not null,
createDate varchar(100) not null,
fileName varchar(100) not null
);

create table PO(
cloName int primary key auto_increment,
cloDetails varchar(100) not null,
loDetails text(16000), 
syllabusID int,
CONSTRAINT fk_po FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);

-- create table users(id int primary key auto_increment,
-- uname varchar(100),
-- upwad varchar(50),
-- uemail varchar(100),
-- umobile varchar(100),
-- roleID int,
-- CONSTRAINT lien_ket_02 FOREIGN KEY (roleID) REFERENCES role(id)
-- );

create table users(
id int primary key auto_increment,
uname varchar(100),
upwad varchar(50),
uemail varchar(100),
umobile varchar(100),
roleID int,
description varchar(5000),
major varchar(100),
mode varchar(100),
photo text(5000),
CONSTRAINT lien_ket_02 FOREIGN KEY (roleID) REFERENCES role(id)
);

create table Question(
qid int primary key auto_increment,
sessionNo int,
qName varchar(1000) not null,
qDetail text(16000) not null,
syllabusID int,
CONSTRAINT fk_question FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);

-- create table Material(
-- mID varchar(10) primary key,
-- mDescription varchar(100) not null,
-- Author varchar(100),
-- Publisher varchar(100),
-- PublishedDate int,
-- Edition varchar(10),
-- ISBN varchar(100),
-- isMainMaterial bit default(0),
-- isHardCopy bit default(0),
-- isOnline bit default(0),
-- Note varchar(100)
-- );

create table Assessment(
Category varchar(50) not null,
Type varchar(50) not null,
Part int not null,
Weight varchar(10) not null,
CompletionCriteria varchar(10) not null,
Duration varchar(100) not null,
QuestionType varchar(100) not null,
NoQuestion varchar(100) not null,
KnowledAndSkill varchar(50),
GradingGuide varchar(50) not null,
Note varchar(100)
);

CREATE TABLE Materials (
  id int NOT NULL AUTO_INCREMENT,
  material_description varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  author varchar(45) DEFAULT NULL,
  publisher varchar(45) DEFAULT NULL,
  published_date varchar(45) DEFAULT NULL,
  edition varchar(45) DEFAULT NULL,
  isbn varchar(45) DEFAULT NULL,
  is_main tinyint DEFAULT NULL,
  is_hard_copy tinyint DEFAULT NULL,
  is_online tinyint DEFAULT NULL,
  note varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  syllabus_id int DEFAULT NULL,
  status tinyint DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY material_description_UNIQUE (material_description),
  KEY syllabus__id1 (syllabus_id),
  CONSTRAINT syllabus_id FOREIGN KEY (syllabus_id) REFERENCES syllabus (syllabusID)
) 

select * from materials
use swp
drop table Materials


CREATE TABLE PreRequisite(
	id int NOT NULL AUTO_INCREMENT,
    sjCode varchar(100) DEFAULT NULL,
    reqSubject varchar(100) DEFAULT NULL,
    descriptions longtext,
    PRIMARY KEY (id),
	CONSTRAINT sjCode1 FOREIGN KEY (sjCode) REFERENCES subjects (subject_code),
    CONSTRAINT reqSubject1 FOREIGN KEY (reqSubject) REFERENCES subjects (subject_code)
)

select id, sjCode, reqSubject, descriptions from PreRequisite where sjCode like 'SWP391'
select * from PreRequisite
select * from subjects

insert into PreRequisite(id,  sjCode, reqSubject, descriptions)
values(1, 'FER201m', 'WED201c', 'none'),
(2, 'WED201c', null, 'none'),
(3, 'SWP391', 'PRJ301', 'PRJ301 (Java Web Application Development)'),
(4, 'SWP391', 'DBI202', 'none'),
(5,'SWP391', 'PRF192', 'none'),
(6, 'SWP391','PRO191', 'none')

insert into subjects
values(19, 'WED201c', 'Web Design', 'none', 3, 'Bachenlor', '419', true),
(20,'PRJ301','Java Web Application', 'none', 3, 'Bachenlor', '419',true),
(21, 'DBI202', 'Database', 'none',3, 'Bachenlor', '419', true)

-- insert into Subject(sjCode, sjName, sPreRequire, sCredit)
-- values('DBI202','Database System', 'PRO192', 3),
-- ('PRF192','Fundemental Programming', '',3),
-- ('LAB211','OOP with Java Lab','PRO192',3)

insert into Subject(sjCode, sjName, sPreRequire, sCredit)
values('JPD113', 'Elementary Japanese A1.1','',3),
('JPD123','Elementary Japanese A1.2','JPD113',3),
('MAE101','Math', '',3)


INSERT INTO subjects VALUES (1,'FER201m','Front-End web development with React_Phát triển web Front-End với React	','Learn front-end web development for implementing a multi-platform solution:\n- This subject introduces an overview of client-side web UI frameworks, in particular Bootstrap. The student will learn about grids and responsive design; Bootstrap CSS and JavaScript components; CSS preprocessors, Less and Sass.\n- The basics of Node.js and NPM and task runners like Grunt and Gulp.\n- Explores Javascript based front-end application development, and in particular the React library: JavaScript ES6 for developing React application, Reactstrap for Bootstrap based responsive UI design, React components, React router and its use in developing single-page applications, designing controlled forms.\n- The student will be introduced to the Flux architecture and Redux. Explore various aspects of Redux and use it to develop React-Redux powered applications.\n- Use Fetch for client-server communication and the use of REST API on the server side.',3,'Bachelor',419,1),
(2,'JPD113','Elementary Japanese 1- A1.1_Tiếng Nhật sơ cấp 1-A1.1','I. Yêu cầu định hướng triển khai của môn học: Môn học cung cấp kiến thức, kỹ năng cơ bản của tiếng Nhật ở trình độ sơ cấp 1 (tương đương với trình độ A1) cho đối tượng sinh viên học tiếng Nhật là ngoại ngữ 2 tại trường Đại học.\nII. Mục tiêu của môn học:\nSau khi hoàn thành môn học, sinh viên có thể đạt được các mục tiêu như sau:\n1) Có thể viết, đọc thành thạo bảng chữ cái tiếng Nhật (chữ mềm, chữ cứng)\n2) Có thể nắm được khoảng 200 từ vựng cơ bản, cách viết và đọc của khoảng hơn 30 chữ Hán, khoảng hơn 20 cấu trúc ngữ pháp cơ bản dùng trong hội thoại sơ cấp.\n3) Có thể hiểu, sử dụng các cách nói quen thuộc được sử dụng trong đời sống thường nhật để đáp ứng nhu cầu giao tiếp cụ thể như có thể tự giới thiệu bản thân (giới thiệu tên, quốc tịch, nghề nghiệp, sở thích v.v..); có thể hỏi địa điểm, có thể giao tiếp với nhân viên để hỏi giá tiền, gọi đồ v.v…; có thể kể về những hoạt động hằng ngày của bản thân, hỏi giờ làm việc của các cơ quan tổ chức.\n4) Rèn luyện được kỹ năng làm việc nhóm, phát triển bản thân thông qua các hoạt động nhóm trong lớp (role play..) và các hoạt động ngoại khóa.\n\nIII. Hình thức triển khai môn học: xem cụ thể các nội dung trong Grading structure',3,'Bachelor',1469,NULL),
(3,'SWP391','Application development project_Dự án phát triển phần mềm','This course focuses on designing, developing, and integrating the basic Web-based management system (as assigned/agreed by the teacher) using Java Web (JSP, Servlet, JDBC) or .NET (ASP.NET, ADO.NET) technologies . Students are required to build the system with other 3-5 team members as appointed by the teacher.\nAfter the course, students will be able to achieve Java web programing proficiency with the following skills by practicing with other members in the assigned team\n- Proficiency in common web techniques and basic Java Web skills (JSP, Servlet, JDBC) or .NET Web skills (ASP.NET, ADO.NET)\n- Proficiency in front end skills (HTML, CSS, JS) require for industry\n- Proficiency in SQL skills required for industry\n- Analyze & design the solution following the object oriented models\n- Co-ordinate with the team to complete the works in the form of a project',3,'Bachelor',419,NULL),
(4,'SWR302','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL),
(5,'sss','sss','sss',3,'sss',26,1),(6,'dd','sss','sss',3,'sss',26,0);

INSERT INTO materials VALUES (1,'Guides & Templates (for Students & Teachers)','','','','','',1,0,0,'Soft version compiled by FU ','SWP391',1),
(2,'Learn HTML and CSS with W3Schools(https://www.w3schools.com/)','','','','','',0,0,1,'','SWP391',1),
(3,'SQL for MySQL Developers A Comprehensive Tutorial and Reference','Rick F. van der Lans','Addison-Wesley Professional','2007','1st edition','978-0131497351',0,1,0,'','SWP391',1),
(4,'Murach\'s Java Servlets and JSP	','Joel Murach, Michael Urban	','Mike Murach & Associates	','2014','3rd Edition','978-1890774783',0,1,0,NULL,'SWP391',1),
(5,'https://www.coursera.org/learn/bootstrap-4/home/welcome	','','Coursera','','','',1,0,1,'','SWP391',0),
(6,'Pro MERN Stack - Full Stack Web App Development with Mongo, Express, React, and Node','Vasan Subramanian','Apress','2019','2nd','978-1484243909	',0,1,0,NULL,'FER201m',1),
(7,'Software Requirements','Karl E. Wiegers','Microsoft Press	','','Third Edition	','978-0-7356-7966-5	',1,1,0,'','SWR302',1),
(8,'More About Software Requirements: Thorny Issues and Practical Advice	','Karl E. Wiegers','Microsoft Press','','','978-0-7356-2267-8',0,1,0,'','SWR302',1),
(9,'Requirements Engineering: Secure Software Specifications Specialization	','','Coursera','2014','','',0,0,1,'https://www.coursera.org/specializations/requirements-engineering-secure-software','SWP391',0),
(11,'Dekiru Nihongo - Beginner Main textbook	','noone','','','','',1,1,1,'','SWP391',0);

INSERT INTO `swp`.`subjects` (`subject_code`, `subject_name`, `description`, `no_credit`, `degree_level`, `combo_id`, `status`)
VALUES ('fff', 'effee', 'nothing here', '3', 'Bachelor', 27, true);

select * from users
select * from subjects

drop table subjects
drop table syllabus
drop table materials

select * from Subjects
select * from curriculum
select * from materials

update users set roleID = 3 where id = 1
update users set roleID = 2 where id = 2

select * from Syllabus

-- INSERT INTO Syllabus
-- VALUES 
-- (827, 'MACHINE LEARNING', ' ', 3, 'Bachelor', 'Contact time: 30 sessions', 'Must passed AIG201 - Artificial Intelligent & MAS291 - Probability & Statistics', 'The course provided student with knowledge about major machine learning paradigms (supervised & unsupervised), problems (classification, clustering, ...), and important machine learning tools (MaxEnt, SVM, ANN - DNN, HMM, CRF, ...)', 
-- 'Students must attend more than 80% of contact sessions in order to be accepted to the final examination.', ' ', 10, '525/QĐ-ĐHFPT', 'True', ' ', 5, 'True', '8/22/2014', 'FER201m'
-- );
-- INSERT INTO swp.`Syllabus` (syllabusID, syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
-- VALUES 
-- (
-- 6486, 'Front-End web development with React_Phát triển web Front-End với React', ' ', 3, 'Bachelor', 'Study hour (150h) = 45h contact hours + 1h final exam + 104h self-study', 'WED201c', 'This subject introduces an overview of client-side web UI frameworks, in particular Bootstrap. The student will learn about grids and responsive design; Bootstrap CSS and JavaScript components; CSS preprocessors, Less and Sass.', 
-- 'Students must attend more than 80% of contact slots in order to be accepted to the final examination.', 'Visual Studio Code (https://code.visualstudio.com)', 10, ' ', 'True', 'Final exam (60p): 30%', 5, 'True', '8/17/2022', 'FER201m'
-- );



INSERT INTO swp.`users2` (uName, upwad, uemail, umobile, roleid) VALUES ('Bạch Tú', '123456', 'tunbe2510@gmail.com', '1111111111', '2');
INSERT INTO swp.`users2` (uName, upwad, uemail, umobile, roleid) VALUES ('Nguyễn Anh Tú', '123456', 'tunahe161712@fpt.edu.vn', '2222222222', '3');
INSERT INTO swp.`users2` (uName, upwad, uemail, umobile, roleid) VALUES ('Tu Nguyễn', '123456', 'nguyentu2392@gmail.com', '3333333333', '4');
INSERT INTO swp.`users2` (uName, upwad, uemail, umobile, roleid) VALUES ('Phạm Thái Anh', '123456', 'anhpthe161502@fpt.edu.vn', '4444444444', '5');
INSERT INTO swp.`users2` (uName, upwad, uemail, umobile, roleid) VALUES ('Nguyễn Văn Khánh', '123456', 'khanhnvhe151005@fpt.edu.vn', '5555555555', '6');
INSERT INTO swp.`users2` (uName, upwad, uemail, umobile, roleid) VALUES ('Quách Khánh Linh', '123456', 'linhqkhe163257@fpt.edu.vn', '6666666666', '7');

drop table users

select * from users

INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Bạch Tú', '123456', 'tunbe2510@gmail.com', '1111111111', '2', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Nguyễn Anh Tú', '123456', 'tunahe161712@fpt.edu.vn', '2222222222', '3', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Tu Nguyễn', '123456', 'nguyentu2392@gmail.com', '3333333333', '4','images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Phạm Thái Anh', '123456', 'anhpthe161502@fpt.edu.vn', '4444444444', '5','images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Nguyễn Văn Khánh', '123456', 'khanhnvhe151005@fpt.edu.vn', '5555555555', '6', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Quách Khánh Linh', '123456', 'linhqkhe163257@fpt.edu.vn', '6666666666', '7', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('abc', '123456', 'linhqkhe163257@fpt.edu.vn', '6666666666', '8', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('admin', '123456', 'admin@fpt.edu.vn', '6666666666', '2', 'images/image1.jpg');


UPDATE `swp`.`subjects` SET `status` = 0 WHERE (`subject_code` = "SWR302")

select * from curriculum

use swp
select * from subjects

SELECT id, subject_code, subject_name, description, no_credit, degree_level, combo_id, status FROM subjects
                         where subject_code like '%sss%'
                        order by id asc
                        
                        
                        
INSERT INTO subjects VALUES (1,'FER201m','Front-End web development with React_Phát triển web Front-End với React	','Learn front-end web development for implementing a multi-platform solution:\n- This subject introduces an overview of client-side web UI frameworks, in particular Bootstrap. The student will learn about grids and responsive design; Bootstrap CSS and JavaScript components; CSS preprocessors, Less and Sass.\n- The basics of Node.js and NPM and task runners like Grunt and Gulp.\n- Explores Javascript based front-end application development, and in particular the React library: JavaScript ES6 for developing React application, Reactstrap for Bootstrap based responsive UI design, React components, React router and its use in developing single-page applications, designing controlled forms.\n- The student will be introduced to the Flux architecture and Redux. Explore various aspects of Redux and use it to develop React-Redux powered applications.\n- Use Fetch for client-server communication and the use of REST API on the server side.',3,'Bachelor',419,1),
(2,'JPD113','Elementary Japanese 1- A1.1_Tiếng Nhật sơ cấp 1-A1.1','I. Yêu cầu định hướng triển khai của môn học: Môn học cung cấp kiến thức, kỹ năng cơ bản của tiếng Nhật ở trình độ sơ cấp 1 (tương đương với trình độ A1) cho đối tượng sinh viên học tiếng Nhật là ngoại ngữ 2 tại trường Đại học.\nII. Mục tiêu của môn học:\nSau khi hoàn thành môn học, sinh viên có thể đạt được các mục tiêu như sau:\n1) Có thể viết, đọc thành thạo bảng chữ cái tiếng Nhật (chữ mềm, chữ cứng)\n2) Có thể nắm được khoảng 200 từ vựng cơ bản, cách viết và đọc của khoảng hơn 30 chữ Hán, khoảng hơn 20 cấu trúc ngữ pháp cơ bản dùng trong hội thoại sơ cấp.\n3) Có thể hiểu, sử dụng các cách nói quen thuộc được sử dụng trong đời sống thường nhật để đáp ứng nhu cầu giao tiếp cụ thể như có thể tự giới thiệu bản thân (giới thiệu tên, quốc tịch, nghề nghiệp, sở thích v.v..); có thể hỏi địa điểm, có thể giao tiếp với nhân viên để hỏi giá tiền, gọi đồ v.v…; có thể kể về những hoạt động hằng ngày của bản thân, hỏi giờ làm việc của các cơ quan tổ chức.\n4) Rèn luyện được kỹ năng làm việc nhóm, phát triển bản thân thông qua các hoạt động nhóm trong lớp (role play..) và các hoạt động ngoại khóa.\n\nIII. Hình thức triển khai môn học: xem cụ thể các nội dung trong Grading structure',3,'Bachelor',1469,NULL),
(3,'SWP391','Application development project_Dự án phát triển phần mềm','This course focuses on designing, developing, and integrating the basic Web-based management system (as assigned/agreed by the teacher) using Java Web (JSP, Servlet, JDBC) or .NET (ASP.NET, ADO.NET) technologies . Students are required to build the system with other 3-5 team members as appointed by the teacher.\nAfter the course, students will be able to achieve Java web programing proficiency with the following skills by practicing with other members in the assigned team\n- Proficiency in common web techniques and basic Java Web skills (JSP, Servlet, JDBC) or .NET Web skills (ASP.NET, ADO.NET)\n- Proficiency in front end skills (HTML, CSS, JS) require for industry\n- Proficiency in SQL skills required for industry\n- Analyze & design the solution following the object oriented models\n- Co-ordinate with the team to complete the works in the form of a project',3,'Bachelor',419,NULL),
(4,'SWR302','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL),
(5,'PRF192','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL),
(6,'ITE302c','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL),
(7,'PRO191','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL),
(8,'CEA201b','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL),
(9,'AIL301','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL),
(10,'abcd','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL);
INSERT INTO subjects VALUES (11,'abbb','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL),
(12,'accc','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL);
INSERT INTO subjects VALUES (13,'bbbb','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL),
(14,'rrrrr','	Software Requirement_Yêu cầu phần mềm','This course is a model-based introduction to RE, providing the conceptual background and terminology on RE, addressing a variety of techniques for requirements development including Analysis and Requirements Elicitation; Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance. \nTo implement these frameworks, student will be learnt how to find appropriate customer representatives, elicit requirements from them, and document user requirements, business rules, functional requirements, data requirements, and nonfunctional requirements. The numerous visual models that will be represented to illustrate the requirements\nfrom various perspectives to supplement natural-language text. Other contents recommend the most effective requirements approaches for various specific classes of projects: agile projects developing products of any type, enhancement and replacement projects, projects that incorporate packaged solutions, outsourced projects, \n business process automation projects, business analytics projects, and embedded and other real-time systems.',3,'Bachelor',419,NULL);                        


INSERT INTO swp.`Syllabus` (syllabusID, syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
1, 'MACHINE LEARNING', ' ', 3, 'Bachelor', 'Contact time: 30 sessions', 'Must passed AIG201 - Artificial Intelligent & MAS291 - Probability & Statistics', 'The course provided student with knowledge about major machine learning paradigms (supervised & unsupervised), problems (classification, clustering, ...), and important machine learning tools (MaxEnt, SVM, ANN - DNN, HMM, CRF, ...)', 
'Students must attend more than 80% of contact sessions in order to be accepted to the final examination.', ' ', 10, '525/QĐ-ĐHFPT', 'Approved', ' ', 5, 'Active', '8/22/2014', 'AIL301'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'Front-End web development with React_Phát triển web Front-End với React', ' ', 3, 'Bachelor', 'Study hour (150h) = 45h contact hours + 1h final exam + 104h self-study', 'WED201c', 'This subject introduces an overview of client-side web UI frameworks, in particular Bootstrap. The student will learn about grids and responsive design; Bootstrap CSS and JavaScript components; CSS preprocessors, Less and Sass.', 
'Students must attend more than 80% of contact slots in order to be accepted to the final examination.', 'Visual Studio Code (https://code.visualstudio.com)', 10, ' ', 'Approved', 'Final exam (60p): 30%', 5, 'Active', '8/17/2022', 'FER201m'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'Elementary Japanese 1- A1.1_Tiếng Nhật sơ cấp 1-A1.1', 'Elementary Japanese 1- A1.1', 3, 'Bachelor', 'Thời gian học tập (150h)', 'Không', 'Có thể nắm được khoảng 200 từ vựng cơ bản, cách viết và đọc của khoảng hơn 30 chữ Hán, khoảng hơn 20 cấu trúc ngữ pháp cơ bản dùng trong hội thoại sơ cấp.', 
'Tham dự tối thiểu 80% số giờ học trên lớp mới đủ điều kiện tham gia thi kì thi cuối môn.', 'Sử dụng Giáo trình chính và GT bổ trợ bằng tiếng Nhật.', 10, ' ', 'Approved', 'Điểm chuyên cần, tham gia đầy đủ giờ học trên lớp : 10%', 5, 'Active', '12/22/2022', 'JPD113'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'Software development project_Dự án phát triển phần mềm', ' ', 3, 'Bachelor', 'Study hour (150h) = 45h contact hours + 105h self-study', 'PRJ301 (Java Web Application Development)', 'Proficiency in front end skills (HTML, CSS, JS) require for industry', 
'Get the detailed assignment from the teacher, plan the project tasks, and execute the project accordingly', 'MySQL Server (v8.0.23 or higher), MySQL Workbench;', 10, '1341/QĐ-ĐHFPT', 'Approved', 'Final Project Presentation: 40%', 5, 'Active', '12/22/2022', 'SWP391'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'Software Requirement_Yêu cầu phần mềm', ' ', 3, 'Bachelor', 'Study hour (150h) = 45h contact hours + 1h final exam + 104h self-study', 'SWE102 or SWE201c', 
'Requirements Evaluation; Requirements Specification and Documentation; Requirements Quality Assurance', 'Student is responsible to do all exercises given by instructor in class or at home and submit on time','Microsoft office for documents and presentation.', 10, '1341/QĐ-ĐHFPT', 'Approved', ' ', 5, 'Active', '12/22/2022', 'SWR302'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'COMPUTER ORGANIZATION AND ARCHITECTURE', ' ', 3, 'Bachelor', '4 offline sessions (90 minutes/session)', ' ', 'G5. Knowing the concepts and knowledge in the memory system is decentralized: SRAM, DRAM, Flash, hard drive.', 
'Take part in at least 4/4 offline sessions', ' ', 10, '487/QĐ-ĐHFPT', 'Approved', ' ', 5, 'Active', ' ', 'CEA201b'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'OBJECT-ORIENTED PARADIGM (with C++)', ' ', 3, 'Bachelor', 'Contact time: 30 slots', 'PRF192', 'Algorithm Development: design principles (coupling, cohesion, information hiding); intermediate use of arrays, strings, sequential text files; walkthroughs, debugging, testing', 
'Use laptop in class only for learning purpose', 'C++language utility (ex.Dev-C++) installation in LAB and CLASS rooms', 10, '333/QĐ-ĐHFPT', 'Approved', ' ', 5, 'Active', '4/12/2017', 'PRO191'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'Ethics in IT_Đạo đức trong CNTT', ' ', 3, 'Bachelor', 'Online: 120 hours+5 slot offline', ' ', 'Organizations and governments are seeking out ethics professionals to minimize risk and guide their decision-making about the design of inclusive, responsible, and trusted technology. ', 
'Student must get the certification of CertNexus Certified Ethical Emerging Technologist Professional Certificate (CertNexus) specialization from Coursera to be accepted to the final examination', ' ', 10, '1341/QĐ-ĐHFPT dated 22/11/2021', 'Approved', 'Completion Criteria: Final TE Score >=4 & (Final TE Score + bonus) >= 5', 5, 'Active', '11/22/2021', 'ITE302c'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'Programming Fundamentals_Cơ sở lập trình', ' ', 3, 'Bachelor', 'Study hour (150h) = 45h contact hours + 1h final exam + 104h self-study', 'None', 'Apply learning methods effectively: (ABET i)', 
'Student is responsible to do all assigned exercises given by instructor in class or at home and submit on time', 'C language utility (ex.DevC++ 4.9.9.2)', 10, '1341/QĐ-ĐHFPT', 'Approved', ' ', 5, 'Active', '12/22/2022', 'PRF192'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'abcd', ' ', 3, 'Bachelor', '4 offline sessions (90 minutes/session)', ' ', 'G5. Knowing the concepts and knowledge in the memory system is decentralized: SRAM, DRAM, Flash, hard drive.', 
'Take part in at least 4/4 offline sessions', ' ', 10, '487/QĐ-ĐHFPT', 'Approved', ' ', 5, 'Active', '12/22/2022', 'abcd'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'abbb', ' ', 3, 'Bachelor', '4 offline sessions (90 minutes/session)', ' ', 'G5. Knowing the concepts and knowledge in the memory system is decentralized: SRAM, DRAM, Flash, hard drive.', 
'Take part in at least 4/4 offline sessions', ' ', 10, '487/QĐ-ĐHFPT', 'Approved', ' ', 5, 'Active', '12/22/2022', 'abcd'
);
INSERT INTO swp.`Syllabus` (syllabusName, syllabusEnglish, noCredit, degreeLevel, timeAllocation, preRequisite, Description, studentTask, tools, scoringScale, decisionNo, isApproved, note, minAvgMarkToPass, isActive, approvedDate, subjectCode) 
VALUES 
(
'accc', ' ', 3, 'Bachelor', '4 offline sessions (90 minutes/session)', ' ', 'G5. Knowing the concepts and knowledge in the memory system is decentralized: SRAM, DRAM, Flash, hard drive.', 
'Take part in at least 4/4 offline sessions', ' ', 10, '487/QĐ-ĐHFPT', 'Approved', ' ', 5, 'Active', '12/22/2022', 'abcd'
);




INSERT INTO materials VALUES (1,'Guides & Templates (for Students & Teachers)','','','','','',1,0,0,'Soft version compiled by FU ',4,1);

INSERT INTO categories VALUES (1,'General knowledge and skills','Kiến thức thức chung',1),
(2,'Major knowledge and skills','Khối kiến thức ngành',1),
(3,'Specialized knowledge and skills','Khối kiến thức chuyên ngành',1),
(4,'Elective combo knowledge and skills','Khối kiến thức combo lựa chọn',1);

INSERT INTO Question (qid, sessionNo, qName, qDetail, syllabusID)  VALUES(1, '1', 'CQ1.1', 'Programming Language and Programming Paradigm Hints: What is a programming language? Lists at least 2 programming languages? What is a programming paradigm? Lists at least 2 programming paradigms?', 7);
INSERT INTO Question (sessionNo, qName, qDetail, syllabusID)  VALUES('1', 'CQ1.2', 'Programming Language and Programming Paradigm Hints: What is a programming language? Lists at least 2 programming languages? What is a programming paradigm? Lists at least 2 programming paradigms?', 7);
INSERT INTO Question (sessionNo, qName, qDetail, syllabusID)  VALUES('2', 'CQ2.1', 'Programming Language and Programming Paradigm Hints: What is a programming language? Lists at least 2 programming languages? What is a programming paradigm? Lists at least 2 programming paradigms?', 7);
INSERT INTO Question (sessionNo, qName, qDetail, syllabusID)  VALUES('3', 'CQ3.1', 'Programming Language and Programming Paradigm Hints: What is a programming language? Lists at least 2 programming languages? What is a programming paradigm? Lists at least 2 programming paradigms?', 7);
INSERT INTO Question (sessionNo, qName, qDetail, syllabusID)  VALUES('4', 'CQ4.1', 'Programming Language and Programming Paradigm Hints: What is a programming language? Lists at least 2 programming languages? What is a programming paradigm? Lists at least 2 programming paradigms?', 7);
INSERT INTO Question (sessionNo, qName, qDetail, syllabusID)  VALUES('5', 'CQ5.1', 'Programming Language and Programming Paradigm Hints: What is a programming language? Lists at least 2 programming languages? What is a programming paradigm? Lists at least 2 programming paradigms?', 7);
INSERT INTO Question (sessionNo, qName, qDetail, syllabusID)  VALUES('6', 'CQ6.1', 'Programming Language and Programming Paradigm Hints: What is a programming language? Lists at least 2 programming languages? What is a programming paradigm? Lists at least 2 programming paradigms?', 7);
INSERT INTO Question (sessionNo, qName, qDetail, syllabusID)  VALUES('7', 'CQ7.1', 'Programming Language and Programming Paradigm Hints: What is a programming language? Lists at least 2 programming languages? What is a programming paradigm? Lists at least 2 programming paradigms?', 7);

INSERT INTO PO (cloName, cloDetails, loDetails, syllabusID)  VALUES(1, 'CLO1', 'Understand the concepts of object oriented (OO) programs to solve problems and fundamentals of object-oriented programming in Java', 7);
INSERT INTO PO (cloDetails, loDetails, syllabusID) VALUES('CLO2', 'Uses streams to read and write data from/to different types of sources/targets', 7);
INSERT INTO PO (cloDetails, loDetails, syllabusID) VALUES('CLO3', 'Uses streams to read and write data from/to different types of sources/targets', 7);
INSERT INTO PO (cloDetails, loDetails, syllabusID) VALUES('CLO4', 'Uses streams to read and write data from/to different types of sources/targets', 7);
INSERT INTO PO (cloDetails, loDetails, syllabusID) VALUES('CLO5', 'Uses streams to read and write data from/to different types of sources/targets', 7);
INSERT INTO PO (cloDetails, loDetails, syllabusID) VALUES('CLO8', 'Uses streams to read and write data from/to different types of sources/targets', 7);
INSERT INTO PO (cloDetails, loDetails, syllabusID) VALUES('CLO1', 'Uses streams to read and write data from/to different types of sources/targets', 14);

INSERT INTO decisionNo (decision_No, decisionName, approvedDate, note, createDate, fileName)  VALUES('525/QĐ-ĐHFPT', 'Cập nhật đề cương CS', '08/22/2014', 'ok QD', '11/13/2021', '');
INSERT INTO decisionNo VALUES ('703/QĐ-ĐH-FPT', 'Ban hành điều chỉnh đề cương kì Fall 2022', '08/17/2022', ' ', '08/19/2022', ' ');
INSERT INTO decisionNo VALUES ('1189/QĐ-ĐHFPT', 'Ban hành đề cương chi tiết học kì Spring 2023', '12/22/2022', ' ', '12/22/2022', ' ');
INSERT INTO decisionNo VALUES ('333/QĐ-ĐHFPT', '333/QĐ-ĐHFPT', '04/12/2017', 'Bổ sung theo flm', '11/13/2021', ' ');
INSERT INTO decisionNo VALUES ('1341/QĐ-ĐHFPT', 'QĐ 1341/QĐ-ĐHFPT Ban hành đề cương chi tiết hệ đại học chính quy triển khai trong học kỳ Spring 2022', '11/22/2021', ' ', '12/13/2021', ' ');
INSERT INTO decisionNo VALUES ('487/QĐ-ĐHFPT', 'QĐ 1341/QĐ-ĐHFPT Ban hành đề cương chi tiết hệ đại học chính quy triển khai trong học kỳ Spring 2022', '12/22/2022', ' ', '12/22/2022', ' ');
INSERT INTO decisionNo VALUES (' ', 'QĐ 1341/QĐ-ĐHFPT Ban hành đề cương chi tiết hệ đại học chính quy triển khai trong học kỳ Spring 2022', '12/22/2022', ' ', '12/22/2022', ' ');
INSERT INTO decisionNo VALUES ('1341/QĐ-ĐHFPT dated 22/11/2021', 'QĐ 1341/QĐ-ĐHFPT Ban hành đề cương chi tiết hệ đại học chính quy triển khai trong học kỳ Spring 2022', '12/22/2022', ' ', '12/22/2022', ' ');

INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (1,'Bachelor of English Studies_Chương trình cử nhân Ngôn ngữ Anh1','BEN_K16B1','1. General objective: The program of Bachelor of English Studies aims to train proficient bachelors with personality and capacity to meet the needs of society; be able to use English fluently at a minimum level equivalent to level 5 according to the 6-lev1','2022-11-28',145,'1');
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (2,'Bachelor Program of Business Adminstration, Marketing Major (CTĐT ngành QTKD, chuyên ngành Marketing)','	BBA_MKT_K16C','The objective of the Bachelor of Business Administration – Marketing program of FPT University is to train students into specialists in marketing management, managers, and entrepreneurs. Students will be equipped with all essential knowledge and skills to','2022-11-28',145,'1');
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (3,'Bachelor Program of Business Adminstration, Finance Major (CTĐT ngành QTKD, chuyên ngành Tài chính)','BBA_FIN_K16C','The objective of the Bachelor of Business Administration – Finance program of FPT University is to train students into specialists in financial management, managers, and entrepreneurs. Students will be equipped with all essential knowledge and skills to','2022-11-28',145,'1');
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (4,'Bachelor Program of Business Adminstration, International Business Major (CTĐT ngành QTKD, chuyên ngành Kinh doanh quốc tế)','BBA_IB_K16B1','The objective of the Bachelor of Business Administration – International Business program of FPT University is to train students into specialists in international business, managers, and entrepreneurs. Students will be equipped with all essential','2022-11-28',145,'0');
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (5,'	Bachelor Program of Business Adminstration, International Business Major (CTĐT ngành QTKD, chuyên ngành Kinh doanh quốc tế)','BBA_IB_K16C','The objective of the Bachelor of Business Administration – International Business program of FPT University is to train students into specialists in international business, managers, and entrepreneurs. Students will be equipped with all essential','2022-11-28',145,'1');
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (6,'	Bachelor Program of Information Technology, Digital Art & Design Major (Chương trình cử nhân ngành CNTT, chuyên ngành Thiết kế Mỹ thuật số)','BIT_GD_K16C','1. Training Objectives General objective: Training Bachelor of Information Technology, Digital Art & Design specialty with personality and capacity to meet the needs of society, mastering professional knowledge and practice, being able to organize, implem','2022-11-28',145,'1');
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (7,'Bachelor Program of Information Technology, Digital Art & Design Major (Chương trình cử nhân ngành CNTT, chuyên ngành Thiết kế Mỹ thuật số)','BIT_GD_K16D','General objective: Training Bachelor of Information Technology, Digital Art & Design specialty with personality and capacity to meet the needs of society, mastering professional knowledge and practice, being able to organize, implement and promote the creativity in jobs related to the trained specialty, being able to work in the international environment, and laying the foundation to pursue further study and research in Digital Art & Design.','2022-11-28',145,'1');
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (8,'Bachelor Program of Korean studies_CTĐT Cử nhân Ngành Ngôn ngữ Hàn Quốc','BKR_K16C','Training Bachelor of Korean Language with political qualities, professional ethics, having an understanding of Korean culture, master knowledge and language skills to apply fluently in a multilingual and multicultural environment. With 2 combos namely \"Economy and Trade Orientation\" and \"Tourism Orientation\", students will be equipped with supplemental knowledge and skills, having solid professional skills, meeting the needs of society and the Vietnamese economy which is developing and under the integration process into the global economy.','2022-11-28',145,'1');
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (10,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (11,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (12,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (13,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO curriculum (id,`Name`,`Code`,`Description`,`DecisionNo`,`TotalCredit`,`active`) VALUES (14,NULL,NULL,NULL,NULL,NULL,NULL);


create table Syllabus(
syllabusID int Primary key not null auto_increment,
syllabusName text(4000) not null,
syllabusEnglish varchar(100),
noCredit int,
degreeLevel varchar(100),
timeAllocation text(4000),
preRequisite text(4000),
Description text(16000),
studentTask text(16000),
tools text(4000),
scoringScale int,
decisionNo varchar(100) not null,
isApproved varchar(100) not null,
note text(16000),
minAvgMarkToPass int,
isActive varchar(100) not null,
approvedDate varchar(100),
subjectCode varchar(10),
CONSTRAINT lien_ket_01 FOREIGN KEY (subjectCode) REFERENCES Subjects(subject_code),
CONSTRAINT fk_decision FOREIGN KEY (decisionNo) REFERENCES decisionNo(decision_No)
);

create table Syllabus(
syllabusID int Primary key not null auto_increment,
syllabusName text(4000) not null,
syllabusEnglish varchar(100),
noCredit int,
degreeLevel varchar(100),
timeAllocation text(4000),
preRequisite text(4000),
Description text(16000),
studentTask text(16000),
tools text(4000),
scoringScale int,
decisionNo varchar(100) not null,
isApproved varchar(100) not null,
note text(16000),
minAvgMarkToPass int,
isActive varchar(100) not null,
approvedDate varchar(100),
subjectCode varchar(10),
CONSTRAINT lien_ket_01 FOREIGN KEY (subjectCode) REFERENCES Subjects(subject_code),
CONSTRAINT fk_decision FOREIGN KEY (decisionNo) REFERENCES decisionNo(decision_No)
);
create table PO(
cloName int primary key auto_increment,
cloDetails varchar(100) not null,
loDetails text(16000), 
syllabusID int,
CONSTRAINT fk_po FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);

create table Syllabus(
syllabusID int Primary key not null auto_increment,
syllabusName text(4000) not null,
syllabusEnglish varchar(100),
noCredit int,
degreeLevel varchar(100),
timeAllocation text(4000),
preRequisite text(4000),
Description text(16000),
studentTask text(16000),
tools text(4000),
scoringScale int,
decisionNo varchar(100) not null,
isApproved varchar(100) not null,
note text(16000),
minAvgMarkToPass int,
isActive varchar(100) not null,
approvedDate varchar(100),
subjectCode varchar(10),
CONSTRAINT lien_ket_01 FOREIGN KEY (subjectCode) REFERENCES Subjects(subject_code),
CONSTRAINT fk_decision FOREIGN KEY (decisionNo) REFERENCES decisionNo(decision_No)
);
create table PO(
cloName int primary key auto_increment,
cloDetails varchar(100) not null,
loDetails text(16000), 
syllabusID int,
CONSTRAINT fk_po FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);
create table users(
id int primary key auto_increment,
uname varchar(100),
upwad varchar(50),
uemail varchar(100),
umobile varchar(100),
roleID int,
description varchar(5000),
major varchar(100),
mode varchar(100),
photo text(5000),
CONSTRAINT lien_ket_02 FOREIGN KEY (roleID) REFERENCES role(id)
);

drop table Question;
select * from Question;
create table Question(
qid int primary key auto_increment,
sessionNo int,
qName varchar(1000) not null,
qDetail text(16000) not null,
syllabusID int,
CONSTRAINT fk_question FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);

create table Syllabus(
syllabusID int Primary key not null auto_increment,
syllabusName text(4000) not null,
syllabusEnglish varchar(100),
noCredit int,
degreeLevel varchar(100),
timeAllocation text(4000),
preRequisite text(4000),
Description text(16000),
studentTask text(16000),
tools text(4000),
scoringScale int,
decisionNo varchar(100) not null,
isApproved varchar(100) not null,
note text(16000),
minAvgMarkToPass int,
isActive varchar(100) not null,
approvedDate varchar(100),
subjectCode varchar(10),
CONSTRAINT lien_ket_01 FOREIGN KEY (subjectCode) REFERENCES Subjects(subject_code),
CONSTRAINT fk_decision FOREIGN KEY (decisionNo) REFERENCES decisionNo(decision_No)
);
create table PO(
cloName int primary key auto_increment,
cloDetails varchar(100) not null,
loDetails text(16000), 
syllabusID int,
CONSTRAINT fk_po FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);
create table users(
id int primary key auto_increment,
uname varchar(100),
upwad varchar(50),
uemail varchar(100),
umobile varchar(100),
roleID int,
description varchar(5000),
major varchar(100),
mode varchar(100),
photo text(5000),
CONSTRAINT lien_ket_02 FOREIGN KEY (roleID) REFERENCES role(id)
);

drop table Question;
select * from Question;
create table Question(
qid int primary key auto_increment,
sessionNo int,
qName varchar(1000) not null,
qDetail text(16000) not null,
syllabusID int,
CONSTRAINT fk_question FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);
create table CommentReviewer(
id int primary key auto_increment, 
name nvarchar(1000),
details text(16000),
report text(1000),
reportDescription text(16000)
);


create table Syllabus(
syllabusID int Primary key not null auto_increment,
syllabusName text(4000) not null,
syllabusEnglish varchar(100),
noCredit int,
degreeLevel varchar(100),
timeAllocation text(4000),
preRequisite text(4000),
Description text(16000),
studentTask text(16000),
tools text(4000),
scoringScale int,
decisionNo varchar(100) not null,
isApproved varchar(100) not null,
note text(16000),
minAvgMarkToPass int,
isActive varchar(100) not null,
approvedDate varchar(100),
subjectCode varchar(10),
CONSTRAINT lien_ket_01 FOREIGN KEY (subjectCode) REFERENCES Subjects(subject_code),
CONSTRAINT fk_decision FOREIGN KEY (decisionNo) REFERENCES decisionNo(decision_No)
);
create table PO(
cloName int primary key auto_increment,
cloDetails varchar(100) not null,
loDetails text(16000), 
syllabusID int,
CONSTRAINT fk_po FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);
create table users(
id int primary key auto_increment,
uname varchar(100),
upwad varchar(50),
uemail varchar(100),
umobile varchar(100),
roleID int,
description varchar(5000),
major varchar(100),
mode varchar(100),
photo text(5000),
CONSTRAINT lien_ket_02 FOREIGN KEY (roleID) REFERENCES role(id)
);

drop table Question;
select * from Question;
create table Question(
qid int primary key auto_increment,
sessionNo int,
qName varchar(1000) not null,
qDetail text(16000) not null,
syllabusID int,
CONSTRAINT fk_question FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);
create table CommentReviewer(
id int primary key auto_increment, 
name nvarchar(1000),
details text(16000),
report text(1000),
reportDescription text(16000)
);
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Bạch Tú', '123456', 'tunbe2510@gmail.com', '1111111111', '2', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Bạch Tú', 'e10adc3949ba59abbe56e057f20f883e', 'tunbe2510@gmail.com', '1111111111', '2', 'images/image3.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Nguyễn Anh Tú', '123456', 'tunahe161712@fpt.edu.vn', '2222222222', '3', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Tu Nguyễn', '123456', 'nguyentu2392@gmail.com', '3333333333', '4','images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Phạm Thái Anh', '123456', 'anhpthe161502@fpt.edu.vn', '4444444444', '5','images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Nguyễn Văn Khánh', '123456', 'khanhnvhe151005@fpt.edu.vn', '5555555555', '6', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Quách Khánh Linh', '123456', 'linhqkhe163257@fpt.edu.vn', '6666666666', '7', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('abc', '123456', 'linhqkhe163257@fpt.edu.vn', '6666666666', '8', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('admin', '123456', 'admin@fpt.edu.vn', '6666666666', '2', 'images/image1.jpg');


create table Syllabus(
syllabusID int Primary key not null auto_increment,
syllabusName text(4000) not null,
syllabusEnglish varchar(100),
noCredit int,
degreeLevel varchar(100),
timeAllocation text(4000),
preRequisite text(4000),
Description text(16000),
studentTask text(16000),
tools text(4000),
scoringScale int,
decisionNo varchar(100) not null,
isApproved varchar(100) not null,
note text(16000),
minAvgMarkToPass int,
isActive varchar(100) not null,
approvedDate varchar(100),
subjectCode varchar(10),
CONSTRAINT lien_ket_01 FOREIGN KEY (subjectCode) REFERENCES Subjects(subject_code),
CONSTRAINT fk_decision FOREIGN KEY (decisionNo) REFERENCES decisionNo(decision_No)
);
create table PO(
cloName int primary key auto_increment,
cloDetails varchar(100) not null,
loDetails text(16000), 
syllabusID int,
CONSTRAINT fk_po FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);
create table users(
id int primary key auto_increment,
uname varchar(100),
upwad varchar(50),
uemail varchar(100),
umobile varchar(100),
roleID int,
description varchar(5000),
major varchar(100),
mode varchar(100),
photo text(5000),
CONSTRAINT lien_ket_02 FOREIGN KEY (roleID) REFERENCES role(id)
);

drop table Question;
select * from Question;
create table Question(
qid int primary key auto_increment,
sessionNo int,
qName varchar(1000) not null,
qDetail text(16000) not null,
syllabusID int,
CONSTRAINT fk_question FOREIGN KEY (syllabusID) REFERENCES Syllabus(syllabusID)
);
create table CommentReviewer(
id int primary key auto_increment, 
name nvarchar(1000),
details text(16000),
report text(1000),
reportDescription text(16000)
);
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Bạch Tú', '123456', 'tunbe2510@gmail.com', '1111111111', '2', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Bạch Tú', 'e10adc3949ba59abbe56e057f20f883e', 'tunbe2510@gmail.com', '1111111111', '2', 'images/image3.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Nguyễn Anh Tú', '123456', 'tunahe161712@fpt.edu.vn', '2222222222', '3', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Tu Nguyễn', '123456', 'nguyentu2392@gmail.com', '3333333333', '4','images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Phạm Thái Anh', '123456', 'anhpthe161502@fpt.edu.vn', '4444444444', '5','images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Nguyễn Văn Khánh', '123456', 'khanhnvhe151005@fpt.edu.vn', '5555555555', '6', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('Quách Khánh Linh', '123456', 'linhqkhe163257@fpt.edu.vn', '6666666666', '7', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('abc', '123456', 'linhqkhe163257@fpt.edu.vn', '6666666666', '8', 'images/image1.jpg');
INSERT INTO swp.`users` (uname, upwad, uemail, umobile, roleID, photo) VALUES ('admin', '123456', 'admin@fpt.edu.vn', '6666666666', '2', 'images/image1.jpg');
INSERT INTO swp.`CommentReviewer` (id, name, details, report, reportDescription) VALUES (1, 'Bạch Tú', 'This is awesome website. I would love to comeback again.', 'valid', 'no report');
INSERT INTO swp.`CommentReviewer` (name, details, report, reportDescription) VALUES ('Tu Nguyễn', 'This is awesome website. I would love to comeback again.', 'valid', 'no report');
INSERT INTO swp.`CommentReviewer` (name, details, report, reportDescription) VALUES ('adddd', 'This is awesome website. I would love to comeback again.', 'valid', 'no report');
INSERT INTO swp.`CommentReviewer` (name, details, report, reportDescription) VALUES ('Phạm Thái Anh', 'This is awesome website. I would love to comeback again.', 'invalid', 'no report');
INSERT INTO swp.`CommentReviewer` (name, details, report, reportDescription) VALUES ('abc', 'This is awesome website. I would love to comeback again.', 'invalid', 'no report');
INSERT INTO swp.`CommentReviewer` (name, details, report, reportDescription) VALUES ('Khánh', 'This is awesome website. I would love to comeback again.', 'invalid', 'no report');