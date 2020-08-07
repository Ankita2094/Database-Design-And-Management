Select  us.School_Name, max(ss.SAT_Math + ss.SAT_Reading + ss.SAT_Writing)as MaxScore
 from `universities`.`us_universities` as `us`
 JOIN `universities`.`sat_score` as `ss`
 ON us.id = ss.Uni_Id group by us.School_Name limit 1;
 