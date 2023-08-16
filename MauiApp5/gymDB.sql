BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Equipment" (
	"EquipmentID"	INTEGER,
	"EquipmentName"	TEXT(100),
	"Quantity"	INTEGER,
	"LastMaintenance"	TEXT,
	"NextMaintenance"	TEXT,
	PRIMARY KEY("EquipmentID")
);
CREATE TABLE IF NOT EXISTS "Staff" (
	"StaffID"	INTEGER,
	"FirstName"	TEXT,
	"LastName"	TEXT,
	"Role"	TEXT,
	"ClockInTime"	TEXT,
	"ClockOutTime"	TEXT,
	PRIMARY KEY("StaffID")
);
CREATE TABLE IF NOT EXISTS "Attendance" (
	"AttendanceID"	INTEGER,
	"MemberID"	INTEGER,
	"ClassID"	INTEGER,
	"AttendanceDate"	TEXT,
	FOREIGN KEY("ClassID") REFERENCES "Classes"("ClassID"),
	FOREIGN KEY("MemberID") REFERENCES "Members"("MemberID"),
	PRIMARY KEY("AttendanceID")
);
CREATE TABLE IF NOT EXISTS "Billing" (
	"BillingID"	INTEGER,
	"MemberID"	INTEGER,
	"Amount"	NUMERIC(10, 2),
	"PaymentDate"	TEXT,
	FOREIGN KEY("MemberID") REFERENCES "Members"("MemberID"),
	PRIMARY KEY("BillingID")
);
CREATE TABLE IF NOT EXISTS "Classes" (
	"ClassID"	INTEGER,
	"ClassName"	TEXT(100),
	"ScheduleTime"	TEXT,
	"InstructorID"	INTEGER,
	FOREIGN KEY("InstructorID") REFERENCES "Staff"("StaffID"),
	PRIMARY KEY("ClassID")
);
CREATE TABLE IF NOT EXISTS "Members" (
	"MemberID"	INTEGER,
	"First_name"	TEXT(50) NOT NULL,
	"Last_Name"	TEXT(50) NOT NULL,
	"PhoneNumber"	NUMERIC(15),
	"Email"	TEXT(100),
	"MembershipType"	TEXT,
	PRIMARY KEY("MemberID")
);
INSERT INTO "Equipment" VALUES (1,'Treadmill',5,'2023-08-01',NULL);
INSERT INTO "Equipment" VALUES (2,'Dumbbells',20,'2023-08-01',NULL);
INSERT INTO "Equipment" VALUES (3,'Yoga Mats',30,'2023-08-02',NULL);
INSERT INTO "Staff" VALUES (1,'John','Doe','Manager',NULL,NULL);
INSERT INTO "Staff" VALUES (2,'Jane','Smith','Instructor',NULL,NULL);
INSERT INTO "Staff" VALUES (3,'Michael','Lee','Front Desk',NULL,NULL);
INSERT INTO "Staff" VALUES (4,'Emily','Liu','Trainer',NULL,NULL);
INSERT INTO "Staff" VALUES (5,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "Attendance" VALUES (1,1,1,'2023-08-03');
INSERT INTO "Billing" VALUES (1,3,150,'2023-08-02');
INSERT INTO "Billing" VALUES (2,4,150,'2023-08-02');
INSERT INTO "Classes" VALUES (1,'Yoga','2023-08-03 15:00',1);
INSERT INTO "Classes" VALUES (2,'Zumba','2023-08-04 10:00',2);
INSERT INTO "Classes" VALUES (3,NULL,NULL,NULL);
INSERT INTO "Members" VALUES (1,'Emliy','Johnson','555-123-4567','emily@test.com','Basic');
INSERT INTO "Members" VALUES (2,'Mike','Smith','555-987-6543','michael.smith@example.com','Premium');
INSERT INTO "Members" VALUES (3,'Olivia','Williams','555-587-1212','olivia.williams@example.com','Basic');
INSERT INTO "Members" VALUES (4,'Ethan','Brown','555-789-1234','ethan.brown@example.com','Basic');
INSERT INTO "Members" VALUES (5,'Ava','Jones','555-451-5621','ava.jones@example.com','Premium');
INSERT INTO "Members" VALUES (6,'Liam','Davis','555-682-4723','liam.davis@example.com','Basic');
INSERT INTO "Members" VALUES (7,'Sophia','Marthinez','555-648-8214','sophia.martinez@example.com','Basic');
INSERT INTO "Members" VALUES (8,'Jackson','Taylor','555-111-2222','jackson.taylor@example.com','Basic');
INSERT INTO "Members" VALUES (9,'Isabella','Anderson','555-524-2415','isabella.anderson@example.com','Basic');
INSERT INTO "Members" VALUES (10,'Noah','Thomas','555-635-4785','noah.thomas@example.com ','Premium');
COMMIT;
