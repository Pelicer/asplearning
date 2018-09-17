--Checking if database exists before creating it.
IF DB_ID('db_asplearning') IS NOT NULL
BEGIN
	--If it does exists, drop it.
    DROP DATABASE db_aspearning;
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
permission_id INT NOT NULL,
PRIMARY KEY(user_id)
);

--Inserting default administrator user
INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES ('admin', 'admin', 1);

--Procedures
