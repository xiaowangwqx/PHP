create database class default charset 'utf8mb4';
	create table users(
		id varchar(50) primary key,
		name varchar(100),
		password varchar(100),
		role varchar](20),
		class varchar(200),
);

create table courses(
	id integer autoincrement primary key,
	subject varchar(100),
	subject_no varchar(100),
	teacher_id varchar(50)
 );

create table course_students(
	course_id integer,
	student_id varchar(50),
	create_at timestamp
);

create table assignments(
	id integer autoincrement primary key,
	title varchar(200),
	attachement varchar(200),
	create_at timestamp,
	course_id integer
);

create table assignments_records(
	id integer autoincrement primary key;
	assignments_id integer,
	student_id varchar(50),
	create_at timestamp,
	attachement varchar(200),
	sorce float
);

insert into users (id,password,role,name) values ('2017026','2017026','student','wqx')