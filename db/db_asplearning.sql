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
	permission_id INT NOT NULL,
	permission_description VARCHAR(30),
	PRIMARY KEY(permission_id)
);

--Inserting default permissions profile
INSERT INTO tbl_permission(permission_id, permission_description) VALUES (1, 'Administrator');
INSERT INTO tbl_permission(permission_id, permission_description) VALUES (2, 'User');
INSERT INTO tbl_permission(permission_id, permission_description) VALUES (3, 'Scheduler');
INSERT INTO tbl_permission(permission_id, permission_description) VALUES (4, 'Line Leader');

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
INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES ('bruno', 'bruno', 1);
INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES ('rodolfo', 'rodolfo', 1);
INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES ('rogerio', 'rogerio', 1);
INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES ('reginaldo', 'reginaldo', 4);
INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES ('elenise', 'elenise', 4);
INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES ('marcio', 'marcio', 4);
INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES ('jose', 'jose', 4);
INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES ('milaine', 'milaine', 4);

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
	user_id INT,
	PRIMARY KEY(line_id),
	FOREIGN KEY(user_id) REFERENCES tbl_user(user_id)
);

--Inserting lines
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL01', (SELECT user_id FROM tbl_user WHERE user_name = 'milaine'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL02', (SELECT user_id FROM tbl_user WHERE user_name = 'milaine'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL03', (SELECT user_id FROM tbl_user WHERE user_name = 'milaine'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL04', (SELECT user_id FROM tbl_user WHERE user_name = 'milaine'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL05', (SELECT user_id FROM tbl_user WHERE user_name = 'milaine'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL06', (SELECT user_id FROM tbl_user WHERE user_name = 'marcio'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL07', (SELECT user_id FROM tbl_user WHERE user_name = 'marcio'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL08', (SELECT user_id FROM tbl_user WHERE user_name = 'marcio'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL09', (SELECT user_id FROM tbl_user WHERE user_name = 'reginaldo'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL10', (SELECT user_id FROM tbl_user WHERE user_name = 'reginaldo'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL11', (SELECT user_id FROM tbl_user WHERE user_name = 'reginaldo'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL12', (SELECT user_id FROM tbl_user WHERE user_name = 'reginaldo'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL13', (SELECT user_id FROM tbl_user WHERE user_name = 'reginaldo'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL18', (SELECT user_id FROM tbl_user WHERE user_name = 'jose'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL19', (SELECT user_id FROM tbl_user WHERE user_name = 'jose'));
INSERT INTO tbl_line(line_desc, user_id) VALUES('GL20', (SELECT user_id FROM tbl_user WHERE user_name = 'jose'));

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
	family_phNET INT,
	PRIMARY KEY(family_id)
);

INSERT INTO tbl_family(family_description) VALUES('TURIS15U', 60);
INSERT INTO tbl_family(family_description) VALUES('TURIS14', 50);
INSERT INTO tbl_family(family_description) VALUES('VEGAS', 45);
INSERT INTO tbl_family(family_description) VALUES('STAR15', 30);
INSERT INTO tbl_family(family_description) VALUES('STAR13', 35);
INSERT INTO tbl_family(family_description) VALUES('FIRELORD', 30);
INSERT INTO tbl_family(family_description) VALUES('FIRESTAR', 40);
INSERT INTO tbl_family(family_description) VALUES('LOKI15', 45);
INSERT INTO tbl_family(family_description) VALUES('LOKI14', 45);
INSERT INTO tbl_family(family_description) VALUES('LOKIG', 40);
INSERT INTO tbl_family(family_description) VALUES('GAMBIT', 50);
INSERT INTO tbl_family(family_description) VALUES('BLACKMMF', 55);
INSERT INTO tbl_family(family_description) VALUES('BLACKSFF', 55);
INSERT INTO tbl_family(family_description) VALUES('ANGELFSH', 45);
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
	line_ph INT,
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
	family_id INT,
	PRIMARY KEY(schedule_id),
	FOREIGN KEY(line_id) REFERENCES tbl_line(line_id),
	FOREIGN KEY(family_id) REFERENCES tbl_family(family_id)
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
