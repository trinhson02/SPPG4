create database SQL_SPP_G4;
use SQL_SPP_G4;

create table user (
    user_id int not null primary key,
    fullname varchar(64),
    email varchar(64),
    phone_number int,
    password varchar(64),
    role_name varchar(64),
    avatar varbinary(100),
    note text
);
create table role (
    role_id int not null primary key,
    role_name varchar(64)
    
);
drop table role;
create table setting (
    setting_id int not null,
    setting_group varchar(64),
    setting_name varchar(64),
    display_order int,
    description text,
    is_active varchar(64),
    manager_id int,
    semester_id int,
    primary key(setting_id, manager_id, semester_id)
);
create table subject (
	subject_id int not null primary key,
    subject_code varchar(64),
    subject_name varchar(64),
    manager_id int,
    foreign key(manager_id) references setting(manager_id),
    is_active varchar(64)
);
create table subject_setting (
    setting_id int not null primary key,
    subject_id int,
    foreign key(subject_id) references subject(subject_id),
    setting_group varchar(64),
    setting_name varchar(64),
    setting_value varchar(64),
    display_order int,
    description text
);
create table project (
	project_id int not null primary key,
    project_name varchar(64),
    start_date date,
    end_date date,
    project_description text,
    file varchar(100),
    team_id int,
    foreign key(team_id) references team(team_id)
    
);
create table team (
	team_id int not null primary key,
    team_name varchar(64),
    class_id int,
    foreign key(class_id) references class(class_id)
    
);
create table class (
	class_id int not null primary key,
    class_code varchar(64),
    class_details varchar(64),
    semester_id int,
    foreign key(semester_id) references setting(semester_id),
    subject_id int,
    foreign key(subject_id) references subject(subject_id),
    manager_id int,
    foreign key(manager_id) references setting(semester_id),
    status varchar (64)
);
create table class_student (
    class_id int,
    foreign key(class_id) references class(class_id),
    student_id int,
    foreign key(user_id) references user(user_id),
    is_active varchar(64),
    note text
);
