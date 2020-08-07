Select hd.Degree_Type, us.School_Name from `universities`.`us_universities` as `us`
 JOIN `universities`.`higherdegree` as `hd`
 ON us.Highest_Degrees_Awarded = hd.Higher_Degree_Id where hd.Higher_Degree_Id = 4  limit 15;