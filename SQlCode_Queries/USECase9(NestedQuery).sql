select School_Name,Tution_Per_Year,Student_Size 
from us_universities 
where School_Name = (Select Graduate_School_Name from top_engineering_school where Graduate_School_Name like 'Northeastern%');