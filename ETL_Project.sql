Drop DATABASE restaurant_db;
CREATE DATABASE restaurant_db;
USE restaurant_db;

-- Create tables for raw data to be loaded into
CREATE TABLE Chicago_violation (
  Inspection_ID INT PRIMARY KEY,
  DBA_Name TEXT,
  Facility_Type TEXT,
  Risk Text,
  City Text,
  Inspection_Date Date,
  Inspection_Type Text,
  Results Text,
  Violations Text
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
SELECT * FROM SF_violation;

SELECT c.DBA_Name, c.Risk, c.Inspection_Date, c.Inspection_Type, c.Results, c.Violations, s.business_name, s.inspection_date, s.inspection_score, s.inspection_type, s.violation_description, s.risk_category FROM Chicago_violation as c INNER JOIN SF_violation as s ON c.DBA_Name=s.business_name;