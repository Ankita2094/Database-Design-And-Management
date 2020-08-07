Create VIEW Schools_Fees AS
SELECT School_Name, Tution_Per_Year,Student_Size
FROM us_universities
WHERE Tution_Per_Year > 10000;


Select * from Schools_Fees