Drop DATABASE if exists restaurant1_db;
CREATE DATABASE restaurant1_db;
USE restaurant1_db;

-- Create tables for raw data to be loaded into
CREATE TABLE Chicago_violation (
  Inspection_ID INT PRIMARY KEY,
  DBA_Name TEXT,
  Facility_Type TEXT,
  Risk Text,
  City Text,
  Results Text,
  Violations Text,
  Inspection_Date_Chicago Date,
  Inspection_Type_Chicago Text
);

CREATE TABLE SF_violation(
  business_id INT,
  business_name Text,
  business_city Text,
  inspection_id Text,
  inspection_date Timestamp,
  inspection_score Float,
  inspection_type Text,
  violation_id Text,
  violation_description Text,
  risk_category Text
);

SELECT * FROM Chicago_violation;
Alter TABLE Chicago_violation DROP Inspection_Date_Chicago;


SELECT * FROM SF_violation;

Drop TABLE IF EXISTS Chicago_SF_violation;
CREATE TABLE Chicago_SF_violation as SELECT c.DBA_Name, c.Risk,  c.Results, c.Violations, c.Inspection_Type_Chicago, s.business_name, s.inspection_date, s.inspection_score, s.inspection_type, s.violation_description, s.risk_category FROM Chicago_violation as c INNER JOIN SF_violation as s ON c.DBA_Name=s.business_name limit 1;