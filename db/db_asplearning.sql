--Checking if database exists before creating it.
IF DB_ID('db_asplearning') IS NOT NULL
BEGIN
	--If it does exists, drop it.
    DROP DATABASE db_asplearning;
END
CREATE DATABASE db_asplearning;
USE db_asplearning;

--Checking if table exists before creating it.
IF (EXISTS(
	SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='db_asplearning' AND TABLE_NAME = 'tbl_permission'
	))
BEGIN
	--If it does exists, drop it.
    DROP TABLE tbl_permission;
END
CREATE TABLE tbl_permission(
	permission_id INT IDENTITY(1,1) NOT NULL,
	permission_description VARCHAR(30),
	PRIMARY KEY(permission_id)
);

--Inserting default permissions profile
INSERT INTO tbl_permission(permission_description) VALUES ('Administrator');
INSERT INTO tbl_permission(permission_description) VALUES ('User');
INSERT INTO tbl_permission(permission_description) VALUES ('Scheduler');
INSERT INTO tbl_permission(permission_description) VALUES ('Line Leader');

--Checking if table exists before creating it.
IF (EXISTS(
	--If it does exists, drop it.
	SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='db_asplearning' AND TABLE_NAME = 'tbl_user'
	))
BEGIN
    DROP TABLE tbl_user;
END
CREATE TABLE tbl_user(
	user_id INT IDENTITY(1,1) NOT NULL,
	user_name VARCHAR(30),
	user_password VARCHAR(12),
	permission_id INT,
	PRIMARY KEY(user_id)
);

--Inserting default administrator user
INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES ('admin', 'admin', 1);

--Checking if table exists before creating it.
IF (EXISTS(
	--If it does exists, drop it.
	SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='db_asplearning' AND TABLE_NAME = 'tbl_lines'
	))
BEGIN
    DROP TABLE tbl_lines;
END
CREATE TABLE tbl_line(
	line_id INT IDENTITY(1,1) NOT NULL,
	line_desc VARCHAR(15),
	line_ph INT,
	user_id INT,
	PRIMARY KEY(line_id),
	FOREIGN KEY(user_id) REFERENCES tbl_user(user_id)
);

--Checking if table exists before creating it.
IF (EXISTS(
	--If it does exists, drop it.
	SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='db_asplearning' AND TABLE_NAME = 'tbl_family'
	))
BEGIN
    DROP TABLE tbl_family;
END
CREATE TABLE tbl_family(
	family_id INT IDENTITY(1,1) NOT NULL,
	family_description VARCHAR(60),
	PRIMARY KEY(family_id)
);

--Checking if table exists before creating it.
IF (EXISTS(
	--If it does exists, drop it.
	SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='db_asplearning' AND TABLE_NAME = 'tbl_lineConfig'
	))
BEGIN
    DROP TABLE tbl_lineConfig;
END
CREATE TABLE tbl_lineConfig(
	line_id INT NOT NULL,
	family_id INT,
	line_net BIT,
	FOREIGN KEY(line_id) REFERENCES tbl_line(line_id),
	FOREIGN KEY(family_id) REFERENCES tbl_family(family_id)
);

--Checking if table exists before creating it.
IF (EXISTS(
	--If it does exists, drop it.
	SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='db_asplearning' AND TABLE_NAME = 'tbl_schedule'
	))
BEGIN
    DROP TABLE tbl_schedule;
END
CREATE TABLE tbl_schedule(
	schedule_id INT IDENTITY(1,1) NOT NULL,
	schedule_orders VARCHAR(2000),
	schedule_time DATETIME,
	line_id INT,
	PRIMARY KEY(schedule_id),
	FOREIGN KEY(line_id) REFERENCES tbl_line(line_id)
);

--Checking if table exists before creating it.
IF (EXISTS(
	--If it does exists, drop it.
	SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='db_asplearning' AND TABLE_NAME = 'tbl_day'
	))
BEGIN
    DROP TABLE tbl_day;
END
CREATE TABLE tbl_day(
	day_id INT IDENTITY(1,1) NOT NULL,
	day_date DATE,
	day_totalBuilt INT,
	PRIMARY KEY(day_id)
);

--Checking if table exists before creating it.
IF (EXISTS(
	--If it does exists, drop it.
	SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='db_asplearning' AND TABLE_NAME = 'tbl_log'
	))
BEGIN
    DROP TABLE tbl_log;
END
CREATE TABLE tbl_log(
	schedule_id INT,
	day_id INT,
	FOREIGN KEY(schedule_id) REFERENCES tbl_schedule(schedule_id),
	FOREIGN KEY(day_id) REFERENCES tbl_day(day_id)
);

--Procedures
